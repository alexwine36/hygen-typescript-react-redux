// eslint-disable
module.exports = {
  prompt: ({ inquirer }) => {
    const questions = [
      {
        type: 'list',
        name: 'actions',
        message: 'What actions would you like to create?',
      },
    ];
    return inquirer.prompt(questions).then(answers => {
      const ACTIONS = answers.actions.map(v =>
        v.toUpperCase().replace(' ', '_')
      );

      return {
        ACTIONS,
        ...answers,
      };
    });
  },
};
