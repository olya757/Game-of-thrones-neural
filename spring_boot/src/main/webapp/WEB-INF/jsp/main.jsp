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
		<div class='title'>
			Determine the type of bird from the photo!
		</div>
		<div  class='title_small'>
		Use images of different species of <strong>birds</strong></div>
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
      <div display="inline-block">
      <div >
        <img id='image-picked' class='no-display' alt='Chosen Image' height="250" >
      </div>
      <div >
        <img id='image-orig' class='no-display' alt='Original Bird' height="250"/>
      </div>
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
