module.exports = {
  prompt: ({ inquirer }) => {
    const questions = [
      {
        type: 'autocomplete',
        name: 'type',
        message: 'What type of Component are you creating?',
        choices: [
          'Assets',
          'Dialogs',
          'Forms',
          'Groups',
          'Inputs',
          'Items',
          'Queries',
          'Styled',
          'Pages',
        ],
      },
      {
        type: 'confirm',
        name: 'createStyles',
        message: 'Create styles?',
      },
      {
        type: 'confirm',
        name: 'createTest',
        message: 'Create tests?',
        default: 'true',
      },
      {
        type: 'confirm',
        name: 'addCompose',
        message: 'Add compose function?',
      },
    ];
    return inquirer.prompt(questions).then(answers => {
      const otherProps = {
        styled: false,
      };

      if (answers.type === 'Styled') {
        otherProps.styled = true;
      }

      if (answers.type === 'Pages') {
        return Promise.resolve({
          basePath: 'src',
          relativeTestPath: '../..',
          ...answers,
          ...otherProps,
        });
      }
      if (answers.type !== 'Pages') {
        return Promise.resolve({
          basePath: 'src/Components',
          relativeTestPath: '../../..',
          ...answers,
          ...otherProps,
        });
      }
    });
  },
};
