$(function(){
  wdtEmojiBundle.defaults.type = 'emojione';
  wdtEmojiBundle.defaults.emojiSheets.apple = 'https://cdnjs.cloudflare.com/ajax/libs/wdt-emoji-bundle/0.2.1/sheets/sheet_apple_64_indexed_128.png';        // default /sheets/sheet_apple_64.png
  wdtEmojiBundle.defaults.emojiSheets.google = 'https://cdnjs.cloudflare.com/ajax/libs/wdt-emoji-bundle/0.2.1/sheets/sheet_google_64_indexed_128.png';      // default /sheets/sheet_google_64.png
  wdtEmojiBundle.defaults.emojiSheets.twitter = 'https://cdnjs.cloudflare.com/ajax/libs/wdt-emoji-bundle/0.2.1/sheets/sheet_twitter_64_indexed_128.png';    // default /sheets/sheet_twitter_64.png
  wdtEmojiBundle.defaults.emojiSheets.emojione = 'https://cdnjs.cloudflare.com/ajax/libs/wdt-emoji-bundle/0.2.1/sheets/sheet_emojione_64_indexed_128.png';  // default /sheets/sheet_emojione_64.png
  wdtEmojiBundle.defaults.emojiSheets.facebook = 'https://cdnjs.cloudflare.com/ajax/libs/wdt-emoji-bundle/0.2.1/sheets/sheet_facebook_64_indexed_128.png';  // default /sheets/sheet_facebook_64.png
  wdtEmojiBundle.defaults.emojiSheets.messenger = 'https://cdnjs.cloudflare.com/ajax/libs/wdt-emoji-bundle/0.2.1/sheets/sheet_messenger_64_indexed_128.png';  // default /sheets/sheet_messenger_64.png
  wdtEmojiBundle.init('.hidden-picker');

  // Convert to emoji
  $('button.btn-reaction .plain-label-reaction').each(function(){
    var emoji = wdtEmojiBundle.render(this.innerText);
    $(this).replaceWith(emoji);
  });
  $('button.btn-reaction').children().removeAttr('title');

  wdtEmojiBundle.on('afterSelect', function (event) {
    var journal_id = event.el.id.match(/journal-([0-9]+)-reaction/)[1];
    if(journal_id) {
      $.post("/journal_reaction/create", {"journal_id": journal_id, "body": event.emoji});
    }
  })
});

