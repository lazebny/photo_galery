CKEDITOR.editorConfig = function(config) {
  // config.extraPlugins = 'mediaembed';
  // config.extraPlugins = 'youtube';
  config.language = 'ru';
  // config.uiColor = '#AADC6E';
  config.allowedContent = true;
  config.clipboard_defaultContentType = 'text';
  config.forcePasteAsPlainText = true
  config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files";
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
  config.filebrowserImageUploadUrl = "/ckeditor/pictures";
  config.filebrowserUploadUrl = "/ckeditor/attachment_files";

  config.toolbar_news =
  [
    { name: 'document', items : [ 'NewPage','Preview' ] },
    { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
    { name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','Scayt' ] },
    { name: 'insert', items : [ 'Image', 'Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak' ] },
                '/',
    { name: 'styles', items : [ 'Styles','Format' ] },
    { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-','RemoveFormat' ] },
    { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote' ] },
    { name: 'links', items : [ 'Link','Unlink','Anchor' ] },
    { name: 'tools', items : [ 'Maximize','-','About' ] }
  ];

  config.toolbar_mini =
  [
    { name: 'document', items : [ 'NewPage','Preview' ] },
    { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
    { name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','Scayt' ] },
    { name: 'insert', items : [ 'Image', 'Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak' ] },
                '/',
    { name: 'styles', items : [ 'Styles','Format' ] },
    { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-','RemoveFormat' ] },
    { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote' ] },
    { name: 'links', items : [ 'Link','Unlink','Anchor' ] },
    { name: 'tools', items : [ 'Maximize','-','About' ] }
  ];
};
