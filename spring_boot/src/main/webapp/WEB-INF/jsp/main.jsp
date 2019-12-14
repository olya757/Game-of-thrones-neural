<html lang='en'>
<head>
  <meta charset='utf-8'>
  <link rel='stylesheet' href='/css/style.css'>
  <script src='/js/client.js'></script>
</head>
<body>
<div>
  <div class='center'>
  <div class="header">
  <div class='title'>Determine the type of bird from the photo!</div>
    <p>
      Use images of different species of <strong>bird</strong>
    </p>
  </div>

    <div class="content">
      <div class='no-display'>
        <input  id='file-input'
               class='no-display'
               type='file'
               name='file'
               accept='image/*'
               onchange='showPicked(this)'>
      </div>
      <button class='choose-file-button' type='button' onclick='showPicker()'>Select Image</button>
      <div class='upload-label'>
        <label id='upload-label'>No file chosen</label>
      </div>
      <div >
        <img id='image-picked' class='no-display' alt='Chosen Image' height="250" >
      </div>
      <div class='analyze'>
        <button id='analyze-button' class='analyze-button' type='button' onclick='analyze()'>Analyze</button>
      </div>
      <div class='result-label'>
        <label id='result-label'></label>
      </div>
    </div>
  </div>
</div>
</body>
</html>
