<%*
function parseFile(fileContent) {
  const chatBuilder = new ait.helpers.ChatBuilder();
  let currentSection = '';
  let currentRole = 'user';

  const processSection = () => {
    if (currentSection) {
      const method = currentRole === 'user' ? 'addUserInput' : 'addAssistantReply';
      chatBuilder[method](currentSection.replace('_AI_\n','').replace('**You**\n',''));
      currentSection = '';
    }
  };

  fileContent.split('\n').map(line => line.trim()).forEach(line => {
    if (line.startsWith('---')) {
      processSection();
      currentRole = currentRole === 'assistant' ? 'user' : 'assistant';
    } else {
      currentSection += line + '\n';
    }
  });

  processSection();

  return chatBuilder.chatMessages;
}

async function getResponse(conversation) {
  const ai_response = await tp.ai.chat(conversation);
  let response = '\n\n---\n_AI_' + '\n' + ai_response + '\n\n---\n**You**\n';
  if(tp.file.selection!='') response = tp.file.selection() + response;
  return response;
}
const conversation = parseFile(tp.ai.content_without_properties);
const response = await getResponse(conversation);
return response;
%>