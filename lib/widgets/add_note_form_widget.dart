import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/add_section_colors_listview_widget.dart';
import 'package:notes_app/widgets/custom_button_widget.dart';
import 'package:notes_app/widgets/custom_text_field_widget.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (data) {
              title = data;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (data) {
              content = data;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          const AddSectionColorsListView(),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomButtonWidget(
                isLoading: state is AddNoteCubitLoading ? true : false,
                onTap: onTap,
                title: 'Add',
                icon: Icons.add,
              );
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

  void onTap() {
    if (formKey.currentState!.validate()) {
      DateTime currentdate = DateTime.now();
      String formattedCurrentDate = DateFormat.yMd().format(currentdate);
      formKey.currentState!.save();
      NoteModel note = NoteModel(
          title: title!,
          content: content!,
          date: formattedCurrentDate,
          color: BlocProvider.of<AddNoteCubit>(context).color.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(note);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
