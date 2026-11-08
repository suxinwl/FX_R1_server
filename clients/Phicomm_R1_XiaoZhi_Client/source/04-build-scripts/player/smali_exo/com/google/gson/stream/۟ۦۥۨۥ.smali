.class public Lcom/google/gson/stream/۟ۦۥۨۥ;
.super Ljava/lang/Object;


# static fields
.field public static ۡ۠۟ۡ:I = -0xc0


# direct methods
.method public static ۟۠ۨۥ(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const-string v3, ""

    const-string v2, ""

    move v0, v1

    :goto_6
    const/16 v4, 0xf

    if-lt v0, v4, :cond_31

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_64

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v1

    :goto_26
    if-lt v0, v4, :cond_7f

    :goto_28
    array-length v0, v3

    if-lt v1, v0, :cond_8e

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_31
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const/16 v6, 0xa

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    xor-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_64
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_16

    :cond_7f
    aget-byte v6, v3, v0

    rem-int v7, v0, v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_8e
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_28
.end method

.method public static ۟ۡ۠۠()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/google/gson/reflect/۟ۡۥ;->ۡۢۧ()I

    move-result v0

    if-gtz v0, :cond_9

    const-string v0, "<!DOCTYPE html>\n<html lang=\"zh-CN\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n    <title>R1\u97f3\u7bb1\u4e0a\u4f20\u6587\u4ef6\u9875\u9762</title>\n    <style>\n        * {\n            margin: 0;\n            padding: 0;\n            box-sizing: border-box;\n            font-family: Arial, \'Microsoft YaHei\', sans-serif;\n        }\n\n        body {\n            background-color: #A9D0F5;\n            color: #2c3e50;\n            padding: 15px;\n            min-height: 100vh;\n            display: flex;\n            flex-direction: column;\n            align-items: center;\n            justify-content: center;\n            line-height: 1.6;\n        }\n\n        .container {\n            background: rgba(255, 255, 255, 0.95);\n            width: 100%;\n            max-width: 500px;\n            border-radius: 20px;\n            padding: 25px;\n            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);\n            text-align: center;\n        }\n\n        h1 {\n            font-size: 22px;\n            margin-bottom: 20px;\n            color: #2980b9;\n        }\n\n        .upload-area {\n            border: 3px dashed #A9D0F5;\n            border-radius: 15px;\n            padding: 25px 15px;\n            margin: 20px 0;\n            transition: all 0.3s;\n            background: rgba(169, 208, 245, 0.2);\n        }\n\n        .upload-area.highlight {\n            background: rgba(169, 208, 245, 0.3);\n            border-color: #3498db;\n        }\n\n        .file-input {\n            display: none;\n        }\n\n        .browse-btn {\n            background: #3498db;\n            color: white;\n            border: none;\n            padding: 10px 20px;\n            border-radius: 50px;\n            font-size: 15px;\n            cursor: pointer;\n            transition: all 0.3s;\n            margin-top: 10px;\n            display: inline-block;\n        }\n\n        .browse-btn:hover {\n            background: #2980b9;\n        }\n\n        .path-input {\n            width: 100%;\n            padding: 12px;\n            border: 2px solid #e0e0e0;\n            border-radius: 10px;\n            margin: 15px 0;\n            font-size: 15px;\n            transition: border 0.3s;\n        }\n\n        .path-input:focus {\n            outline: none;\n            border-color: #3498db;\n        }\n\n        .upload-options {\n            display: flex;\n            justify-content: center;\n            margin: 0;\n            gap: 20px;\n        }\n\n        .upload-option {\n            display: flex;\n            align-items: center;\n            gap: 8px;\n            cursor: pointer;\n        }\n\n        .upload-option input {\n            cursor: pointer;\n        }\n\n        .upload-option label {\n            cursor: pointer;\n        }\n\n        .submit-btn {\n            background: #2ecc71;\n            color: white;\n            border: none;\n            padding: 14px;\n            border-radius: 10px;\n            font-size: 16px;\n            cursor: pointer;\n            transition: all 0.3s;\n            width: 100%;\n            font-weight: 600;\n            margin: 10px 0;\n        }\n\n        .submit-btn:hover {\n            background: #27ae60;\n        }\n\n        .submit-btn:disabled {\n            background: #95a5a6;\n            cursor: not-allowed;\n        }\n\n        .home-btn {\n            background: #f1f1f1;\n            color: #7f8c8d;\n            border: none;\n            padding: 12px;\n            border-radius: 10px;\n            font-size: 15px;\n            cursor: pointer;\n            transition: all 0.3s;\n            width: 100%;\n            font-weight: 500;\n        }\n\n        .home-btn:hover {\n            background: #e0e0e0;\n        }\n\n        .file-list {\n            text-align: left;\n            margin-top: 20px;\n            max-height: 200px;\n            overflow-y: auto;\n            width: 100%;\n            border: 1px solid #e0e0e0;\n            border-radius: 10px;\n            padding: 10px;\n        }\n\n        .file-item {\n            padding: 10px 8px;\n            border-bottom: 1px solid #eee;\n        }\n\n        .file-item:last-child {\n            border-bottom: none;\n        }\n\n        .file-name {\n            overflow: hidden;\n            text-overflow: ellipsis;\n            white-space: nowrap;\n            max-width: 99%;\n        }\n\n        .file-size {\n            color: #7f8c8d;\n            font-size: 13px;\n        }\n\n        .progress-container {\n            width: 100%;\n            height: 6px;\n            background: #ecf0f1;\n            border-radius: 3px;\n            margin-top: 6px;\n            overflow: hidden;\n        }\n\n        .progress-bar {\n            height: 100%;\n            background: #2ecc71;\n            border-radius: 3px;\n            width: 0%;\n            transition: width 0.3s;\n        }\n\n        .hint {\n            font-size: 13px;\n            color: #7f8c8d;\n            margin: 8px 0;\n        }\n\n        .status-text {\n            margin: 12px 0;\n            padding: 8px;\n            border-radius: 6px;\n            background: #f9f9f9;\n            font-size: 13px;\n            min-height: 40px;\n            display: flex;\n            align-items: center;\n            justify-content: center;\n            text-align: center;\n        }\n\n        .success {\n            color: #27ae60;\n            background: rgba(39, 174, 96, 0.1);\n        }\n\n        .error {\n            color: #e74c3c;\n            background: rgba(231, 76, 60, 0.1);\n        }\n\n        .spinner {\n            display: inline-block;\n            width: 16px;\n            height: 16px;\n            border: 2px solid rgba(255, 255, 255, 0.3);\n            border-radius: 50%;\n            border-top-color: white;\n            animation: spin 1s ease-in-out infinite;\n            margin-right: 8px;\n        }\n\n        @keyframes spin {\n            to {\n                transform: rotate(360deg);\n            }\n        }\n\n        @media (max-width: 600px) {\n            .container {\n                padding: 20px;\n                border-radius: 15px;\n            }\n\n            h1 {\n                font-size: 20px;\n            }\n\n            .upload-area {\n                padding: 20px 15px;\n            }\n\n            .path-input,\n            .submit-btn,\n            .home-btn {\n                padding: 12px;\n            }\n        }\n\n        #StatusBar {\n            display: none;\n        }\n\n        .file-status {\n            font-size: 12px;\n            margin-top: 4px;\n            color: #7f8c8d;\n        }\n\n        .response-text {\n            font-size: 11px;\n            margin-top: 4px;\n            color: #3498db;\n            word-break: break-all;\n            max-height: 60px;\n            overflow-y: auto;\n            background: #f9f9f9;\n            padding: 4px;\n            border-radius: 4px;\n            white-space: pre;\n        }\n\n        .response-text:empty {\n            display: none;\n        }\n    </style>\n</head>\n\n<body>\n    <div id=\"StatusBar\"></div>\n\n    <div class=\"container\">\n        <h1>R1\u97f3\u7bb1\u4e0a\u4f20\u6587\u4ef6\u9875\u9762</h1>\n\n        <div class=\"upload-area\" id=\"uploadArea\">\n            <p>\u70b9\u51fb\u6216\u62d6\u653e\u6587\u4ef6\u5230\u6b64\u5904\u4e0a\u4f20</p>\n            <label for=\"fileInput\" class=\"browse-btn\">\u9009\u62e9\u6587\u4ef6</label>\n            <input type=\"file\" id=\"fileInput\" class=\"file-input\" name=\"file\" multiple>\n            <p class=\"hint\">\u652f\u6301\u591a\u6587\u4ef6\u9009\u62e9\uff08Ctrl+\u70b9\u51fb\u6216\u62d6\u62fd\uff09</p>\n            <p class=\"hint\">\u591a\u6587\u4ef6\u4e0a\u4f20\u65f6\u63a8\u8350\u4f7f\u7528\u987a\u5e8f\u4e0a\u4f20</p>\n        </div>\n\n        <div class=\"file-list\" id=\"fileList\">\n            <div class=\"hint\" id=\"emptyMsg\">\u6682\u65e0\u6587\u4ef6\u9009\u62e9</div>\n        </div>\n\n        <input id=\"UploadPath\" type=\"text\" name=\"Upload_Path\" class=\"path-input\" value=\"/sdcard/Upload\"\n            placeholder=\"\u4e0a\u4f20\u8def\u5f84\">\n\n        <div class=\"upload-options\">\n            <div class=\"upload-option\">\n                <input type=\"radio\" id=\"uploadTypeUnified\" name=\"uploadType\" value=\"unified\" checked>\n                <label for=\"uploadTypeUnified\">\u7edf\u4e00\u4e0a\u4f20</label>\n            </div>\n            <div class=\"upload-option\">\n                <input type=\"radio\" id=\"uploadTypeSeparate\" name=\"uploadType\" value=\"separate\">\n                <label for=\"uploadTypeSeparate\">\u987a\u5e8f\u4e0a\u4f20</label>\n            </div>\n        </div>\n\n        <form id=\"uploadForm\" action=\"./upload\" method=\"post\" enctype=\"multipart/form-data\">\n            <div class=\"status-text\" id=\"statusText\">\u51c6\u5907\u4e0a\u4f20</div>\n\n            <button type=\"button\" class=\"submit-btn\" id=\"uploadBtn\">\u4e0a\u4f20\u6587\u4ef6</button>\n        </form>\n\n        <button class=\"home-btn\" onclick=\"location.href=\'/\'\">\u8fd4\u56de\u9996\u9875</button>\n    </div>\n\n    <script>\n        // \u6587\u4ef6\u9009\u62e9\u548c\u663e\u793a\u903b\u8f91\n        const fileInput = document.getElementById(\'fileInput\');\n        const fileList = document.getElementById(\'fileList\');\n        const uploadArea = document.getElementById(\'uploadArea\');\n        const uploadBtn = document.getElementById(\'uploadBtn\');\n        const statusText = document.getElementById(\'statusText\');\n        const emptyMsg = document.getElementById(\'emptyMsg\');\n        const uploadForm = document.getElementById(\'uploadForm\');\n        const UploadPath = document.getElementById(\"UploadPath\");\n\n        // \u8bbe\u7f6e\u9ed8\u8ba4\u53c2\u6570\n        UploadPath.value = `/sdcard/Upload`;\n\n        // \u9632\u6b62\u91cd\u590d\u4e0a\u4f20\u6807\u8bb0\n        let isUploading = false;\n\n        // \u70b9\u51fb\u4e0a\u4f20\u533a\u57df\u89e6\u53d1\u6587\u4ef6\u9009\u62e9\n        uploadArea.addEventListener(\'click\', (e) => {\n            fileInput.click();\n        });\n\n        // \u6807\u7b7e\u70b9\u51fb\u4e8b\u4ef6\n        const browseBtn = uploadArea.querySelector(\'.browse-btn\');\n        browseBtn.addEventListener(\'click\', (e) => {\n            e.stopPropagation();\n        });\n\n        // \u62d6\u653e\u529f\u80fd\n        uploadArea.addEventListener(\'dragover\', (e) => {\n            e.preventDefault();\n            uploadArea.classList.add(\'highlight\');\n        });\n\n        uploadArea.addEventListener(\'dragleave\', () => {\n            uploadArea.classList.remove(\'highlight\');\n        });\n\n        uploadArea.addEventListener(\'drop\', (e) => {\n            e.preventDefault();\n            uploadArea.classList.remove(\'highlight\');\n\n            if (e.dataTransfer.files.length) {\n                fileInput.files = e.dataTransfer.files;\n                updateFileList();\n            }\n        });\n\n        // \u6587\u4ef6\u9009\u62e9\u53d8\u5316\n        fileInput.addEventListener(\'change\', updateFileList);\n\n        // \u4e0a\u4f20\u65b9\u5f0f\u53d8\u5316\n        document.querySelectorAll(\'input[name=\"uploadType\"]\').forEach(uploadType => uploadType.addEventListener(\'change\', updateFileList));\n\n        // \u66f4\u65b0\u6587\u4ef6\u5217\u8868\u663e\u793a\n        function updateFileList() {\n            fileList.scrollTop = 0;\n            fileList.innerHTML = \'\';\n            statusText.textContent = \"\u51c6\u5907\u4e0a\u4f20\";\n            statusText.className = \"status-text\";\n\n            if (!fileInput.files.length) {\n                fileList.innerHTML = \'<div class=\"hint\" id=\"emptyMsg\">\u6682\u65e0\u6587\u4ef6\u9009\u62e9</div>\';\n                return;\n            }\n\n            let i = 0;\n            for (const file of fileInput.files) {\n                const fileItem = document.createElement(\'div\');\n                fileItem.className = \'file-item\';\n                fileItem.id = `file-${i}`;\n\n                const fileInfo = document.createElement(\'div\');\n\n                const fileName = document.createElement(\'div\');\n                fileName.className = \'file-name\';\n                fileName.textContent = file.name;\n\n                const fileSize = document.createElement(\'div\');\n                fileSize.className = \'file-size\';\n                fileSize.textContent = formatFileSize(file.size);\n\n                // \u6587\u4ef6\u72b6\u6001\u6587\u672c\n                const fileStatus = document.createElement(\'div\');\n                fileStatus.className = \'file-status\';\n                fileStatus.id = `status-${i}`;\n                fileStatus.textContent = \'\u7b49\u5f85\u4e0a\u4f20\';\n\n                // \u54cd\u5e94\u6587\u672c\u5bb9\u5668\n                const responseText = document.createElement(\'div\');\n                responseText.className = \'response-text\';\n                responseText.id = `response-${i}`;\n\n                fileInfo.appendChild(fileName);\n                fileInfo.appendChild(fileSize);\n                fileInfo.appendChild(fileStatus);\n                fileInfo.appendChild(responseText);\n\n                const progressContainer = document.createElement(\'div\');\n                progressContainer.className = \'progress-container\';\n                const progressBar = document.createElement(\'div\');\n                progressBar.className = \'progress-bar\';\n                progressBar.id = `progress-${i}`;\n                progressContainer.appendChild(progressBar);\n\n                fileInfo.appendChild(progressContainer);\n                fileItem.appendChild(fileInfo);\n\n                fileList.appendChild(fileItem);\n                i++;\n            }\n            statusText.textContent = `\u5df2\u9009\u62e9${fileInput.files.length}\u4e2a\u6587\u4ef6\uff0c\u7b49\u5f85\u4e0a\u4f20`;\n        }\n\n        // \u683c\u5f0f\u5316\u6587\u4ef6\u5927\u5c0f\n        function formatFileSize(bytes) {\n            if (bytes < 1024) return bytes + \' B\';\n            if (bytes < 1048576) return (bytes / 1024).toFixed(1) + \' KB\';\n            return (bytes / 1048576).toFixed(1) + \' MB\';\n        }\n\n        // \u7edf\u4e00\u4e0a\u4f20\u6587\u4ef6\n        function uploadFilesUnified() {\n            if (isUploading) return false;\n\n            if (!fileInput.files.length) {\n                statusText.textContent = \"\u8bf7\u5148\u9009\u62e9\u6587\u4ef6\";\n                statusText.className = \"status-text error\";\n                return false;\n            }\n\n            isUploading = true;\n            statusText.textContent = \"\u5f00\u59cb\u4e0a\u4f20...\";\n            statusText.className = \"status-text\";\n\n            // \u7981\u7528\u4e0a\u4f20\u6309\u94ae\n            uploadBtn.disabled = true;\n            const originalBtnText = uploadBtn.textContent;\n            uploadBtn.innerHTML = \'<span class=\"spinner\"></span>\u4e0a\u4f20\u4e2d...\';\n\n            // \u8ba1\u7b97\u603b\u6587\u4ef6\u5927\u5c0f\n            const totalSize = Array.from(fileInput.files).reduce((acc, file) => acc + file.size, 0);\n            let uploadedSize = 0;\n            let currentFileIndex = 0;\n\n            // \u4f7f\u7528FormData\u5bf9\u8c61\u6536\u96c6\u8868\u5355\u6570\u636e\n            const formData = new FormData(uploadForm);\n\n            // \u6dfb\u52a0\u6240\u6709\u6587\u4ef6\n            for (let i = 0; i < fileInput.files.length; i++) {\n                formData.append(\'file\', fileInput.files[i]);\n                // \u66f4\u65b0\u6587\u4ef6\u72b6\u6001\n                const progressBar = document.getElementById(`progress-${i}`);\n                const responseText = document.getElementById(`response-${i}`);\n                const fileStatus = document.getElementById(`status-${i}`);\n                if (progressBar) progressBar.style.width = \'0%\';\n                if (responseText) responseText.textContent = \'\';\n                if (fileStatus) {\n                    fileStatus.textContent = \'\u7b49\u5f85\u4e0a\u4f20\';\n                    fileStatus.style.color = \'\';\n                }\n            }\n\n            formData.append(UploadPath.name, UploadPath.value);\n\n            // \u4f7f\u7528XMLHttpRequest\u4e0a\u4f20\uff0c\u4ee5\u4fbf\u83b7\u53d6\u8fdb\u5ea6\n            const xhr = new XMLHttpRequest();\n\n            // \u76d1\u542c\u4e0a\u4f20\u8fdb\u5ea6\n            xhr.upload.addEventListener(\'progress\', function (e) {\n                if (e.lengthComputable) {\n                    // \u8ba1\u7b97\u603b\u8fdb\u5ea6\u767e\u5206\u6bd4\n                    const percentComplete = (e.loaded / e.total) * 100;\n\n                    // \u66f4\u65b0\u603b\u8fdb\u5ea6\u6587\u672c\n                    statusText.textContent = `\u4e0a\u4f20\u4e2d... ${Math.round(percentComplete)}%`;\n\n                    // \u8ba1\u7b97\u5f53\u524d\u5df2\u4e0a\u4f20\u7684\u603b\u5b57\u8282\u6570\n                    const currentUploaded = e.loaded;\n\n                    // \u8ba1\u7b97\u6bcf\u4e2a\u6587\u4ef6\u5e94\u8be5\u5b8c\u6210\u7684\u5b57\u8282\u6570\n                    let accumulatedSize = 0;\n\n                    for (let i = 0; i < fileInput.files.length; i++) {\n                        const file = fileInput.files[i];\n                        const fileSize = file.size;\n\n                        // \u8ba1\u7b97\u5f53\u524d\u6587\u4ef6\u5e94\u8be5\u5b8c\u6210\u7684\u8fdb\u5ea6\n                        let fileProgress = 0;\n\n                        if (i < currentFileIndex) {\n                            // \u5df2\u7ecf\u5b8c\u6210\u4e0a\u4f20\u7684\u6587\u4ef6\n                            fileProgress = 100;\n                        } else if (i === currentFileIndex) {\n                            // \u5f53\u524d\u6b63\u5728\u4e0a\u4f20\u7684\u6587\u4ef6\n                            const fileUploaded = Math.min(currentUploaded - accumulatedSize, fileSize);\n                            fileProgress = (fileUploaded / fileSize) * 100;\n\n                            // \u81ea\u52a8\u6eda\u52a8\u5230\u5f53\u524d\u6b63\u5728\u4e0a\u4f20\u7684\u6587\u4ef6\n                            const fileElement = document.getElementById(`file-${i}`);\n                            if (fileElement) {\n                                fileElement.scrollIntoView({ behavior: \'smooth\', block: \'nearest\' });\n                            }\n                        } else {\n                            // \u5c1a\u672a\u5f00\u59cb\u4e0a\u4f20\u7684\u6587\u4ef6\n                            fileProgress = 0;\n                        }\n\n                        // \u66f4\u65b0\u8fdb\u5ea6\u6761\n                        const progressBar = document.getElementById(`progress-${i}`);\n                        if (progressBar) {\n                            progressBar.style.width = Math.min(fileProgress, 100) + \'%\';\n                        }\n\n                        // \u66f4\u65b0\u6587\u4ef6\u72b6\u6001\n                        const fileStatus = document.getElementById(`status-${i}`);\n                        if (fileStatus) {\n                            if (i < currentFileIndex) {\n                                fileStatus.textContent = \'\u4e0a\u4f20\u5b8c\u6210\';\n                                fileStatus.style.color = \'#27ae60\';\n                            } else if (i === currentFileIndex) {\n                                fileStatus.textContent = `${Math.round(fileProgress)}%`;\n                                fileStatus.style.color = \'\';\n                            } else {\n                                fileStatus.textContent = \'\u7b49\u5f85\u4e0a\u4f20\';\n                                fileStatus.style.color = \'\';\n                            }\n                        }\n\n                        accumulatedSize += fileSize;\n\n                        // \u5982\u679c\u5f53\u524d\u6587\u4ef6\u4e0a\u4f20\u5b8c\u6210\uff0c\u79fb\u52a8\u5230\u4e0b\u4e00\u4e2a\u6587\u4ef6\n                        if (i === currentFileIndex && fileProgress >= 100 && currentFileIndex < fileInput.files.length - 1) {\n                            currentFileIndex++;\n                        }\n                    }\n                }\n            });\n\n            // \u4e0a\u4f20\u5b8c\u6210\n            xhr.addEventListener(\'load\', function () {\n                if (xhr.status >= 200 && xhr.status < 300) {\n                    try {\n                        alert(xhr.responseText);\n                    } catch (e) {\n                        console.error(\"\u54cd\u5e94\u5904\u7406\u9519\u8bef:\", e);\n                        statusText.textContent = \"\u54cd\u5e94\u5904\u7406\u9519\u8bef\";\n                        statusText.className = \"status-text error\";\n                    }\n\n                    // \u5c06\u6240\u6709\u6587\u4ef6\u8fdb\u5ea6\u8bbe\u7f6e\u4e3a100%\n                    for (let i = 0; i < fileInput.files.length; i++) {\n                        const file = fileInput.files[i];\n                        const progressBar = document.getElementById(`progress-${i}`);\n                        if (progressBar) {\n                            progressBar.style.width = \'100%\';\n                        }\n\n                        const fileStatus = document.getElementById(`status-${i}`);\n                        if (fileStatus) {\n                            fileStatus.textContent = \'\u4e0a\u4f20\u5b8c\u6210\';\n                            fileStatus.style.color = \'#27ae60\';\n                        }\n                    }\n\n                    statusText.textContent = \"\u4e0a\u4f20\u5b8c\u6210\uff01\";\n                    statusText.className = \"status-text success\";\n                } else {\n                    statusText.textContent = \"\u4e0a\u4f20\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\";\n                    statusText.className = \"status-text error\";\n\n                    // \u6807\u8bb0\u6240\u6709\u6587\u4ef6\u4e3a\u4e0a\u4f20\u5931\u8d25\n                    for (let i = 0; i < fileInput.files.length; i++) {\n                        const file = fileInput.files[i];\n                        const fileStatus = document.getElementById(`status-${i}`);\n                        if (fileStatus) {\n                            fileStatus.textContent = \'\u4e0a\u4f20\u5931\u8d25\';\n                            fileStatus.style.color = \'#e74c3c\';\n                        }\n                    }\n                }\n\n                // \u6062\u590d\u4e0a\u4f20\u6309\u94ae\n                uploadBtn.disabled = false;\n                uploadBtn.textContent = originalBtnText;\n                isUploading = false;\n            });\n\n            // \u4e0a\u4f20\u9519\u8bef\n            xhr.addEventListener(\'error\', function () {\n                statusText.textContent = \"\u4e0a\u4f20\u51fa\u9519\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\";\n                statusText.className = \"status-text error\";\n\n                // \u6807\u8bb0\u6240\u6709\u6587\u4ef6\u4e3a\u4e0a\u4f20\u9519\u8bef\n                for (let i = 0; i < fileInput.files.length; i++) {\n                    const file = fileInput.files[i];\n                    const fileStatus = document.getElementById(`status-${i}`);\n                    if (fileStatus) {\n                        fileStatus.textContent = \'\u7f51\u7edc\u9519\u8bef\';\n                        fileStatus.style.color = \'#e74c3c\';\n                    }\n                }\n\n                // \u6062\u590d\u4e0a\u4f20\u6309\u94ae\n                uploadBtn.disabled = false;\n                uploadBtn.textContent = originalBtnText;\n                isUploading = false;\n            });\n\n            // \u53d1\u9001\u8bf7\u6c42\n            xhr.open(\'POST\', uploadForm.action, true);\n            xhr.send(formData);\n\n            return false;\n        }\n\n        // \u987a\u5e8f\u4e0a\u4f20\u6587\u4ef6\n        function uploadFilesSequential() {\n            if (isUploading) return false;\n\n            if (!fileInput.files.length) {\n                statusText.textContent = \"\u8bf7\u5148\u9009\u62e9\u6587\u4ef6\";\n                statusText.className = \"status-text error\";\n                return false;\n            }\n\n            isUploading = true;\n            statusText.textContent = \"\u5f00\u59cb\u4e0a\u4f20...\";\n            statusText.className = \"status-text\";\n\n            // \u7981\u7528\u4e0a\u4f20\u6309\u94ae\n            uploadBtn.disabled = true;\n            const originalBtnText = uploadBtn.textContent;\n            uploadBtn.innerHTML = \'<span class=\"spinner\"></span>\u4e0a\u4f20\u4e2d...\';\n\n            const files = Array.from(fileInput.files);\n            let currentIndex = 0;\n            let successCount = 0;\n            let errorCount = 0;\n\n            // \u4e0a\u4f20\u4e0b\u4e00\u4e2a\u6587\u4ef6\u7684\u51fd\u6570\n            function uploadNextFile() {\n                if (currentIndex >= files.length) {\n                    // \u6240\u6709\u6587\u4ef6\u4e0a\u4f20\u5b8c\u6210\n                    if (errorCount === 0) {\n                        statusText.textContent = `\u4e0a\u4f20\u5b8c\u6210\uff01`;\n                        statusText.className = \"status-text success\";\n                    } else {\n                        statusText.textContent = `\u4e0a\u4f20\u5b8c\u6210\uff0c\u6210\u529f: ${successCount}, \u5931\u8d25: ${errorCount}`;\n                        statusText.className = \"status-text error\";\n                    }\n\n                    // \u6062\u590d\u4e0a\u4f20\u6309\u94ae\n                    uploadBtn.disabled = false;\n                    uploadBtn.textContent = originalBtnText;\n                    isUploading = false;\n                    return;\n                }\n\n                const file = files[currentIndex];\n                const fileName = file.name;\n                const index = currentIndex;\n                const responseText = document.getElementById(`response-${index}`);\n                const progressBar = document.getElementById(`progress-${index}`);\n                const fileStatus = document.getElementById(`status-${index}`);\n\n                // \u81ea\u52a8\u6eda\u52a8\u5230\u5f53\u524d\u6b63\u5728\u4e0a\u4f20\u7684\u6587\u4ef6\n                const scroll = () => {\n                    const fileElement = document.getElementById(`file-${index}`);\n                    if (fileElement) {\n                        fileElement.scrollIntoView({ behavior: \'smooth\', block: \'nearest\' });\n                    }\n                };\n                scroll();\n\n                // \u8df3\u8fc7\u5df2\u4e0a\u4f20\u5b8c\u6210\u7684\u6587\u4ef6\n                if (fileStatus && fileStatus.textContent === \'\u4e0a\u4f20\u5b8c\u6210\') {\n                    scroll();\n                    currentIndex++;\n                    uploadNextFile();\n                    return;\n                }\n                \n                // \u66f4\u65b0\u6587\u4ef6\u72b6\u6001\n                if (responseText) responseText.textContent = \'\';\n                if (fileStatus) {\n                    fileStatus.textContent = \'\u4e0a\u4f20\u4e2d...\';\n                    fileStatus.style.color = \'\';\n                }\n\n                // \u66f4\u65b0\u603b\u72b6\u6001\n                statusText.textContent = `\u4e0a\u4f20\u4e2d (${currentIndex + 1}/${files.length}) - \u6210\u529f: ${successCount}, \u5931\u8d25: ${errorCount}`;\n\n                // \u521b\u5efa\u8868\u5355\u6570\u636e\n                const formData = new FormData();\n                formData.append(\'file\', file);\n                formData.append(UploadPath.name, UploadPath.value);\n\n                // \u4f7f\u7528XMLHttpRequest\u4e0a\u4f20\n                const xhr = new XMLHttpRequest();\n\n                // \u76d1\u542c\u4e0a\u4f20\u8fdb\u5ea6\n                xhr.upload.addEventListener(\'progress\', function (e) {\n                    if (e.lengthComputable) {\n                        const percentComplete = (e.loaded / e.total) * 100;\n\n                        // \u66f4\u65b0\u5f53\u524d\u6587\u4ef6\u7684\u8fdb\u5ea6\u6761\n                        if (progressBar) {\n                            progressBar.style.width = percentComplete + \'%\';\n                        }\n\n                        // \u66f4\u65b0\u6587\u4ef6\u72b6\u6001\n                        if (fileStatus) {\n                            fileStatus.textContent = `${Math.round(percentComplete)}%`;\n                        }\n                        scroll();\n                    }\n                });\n\n                // \u4e0a\u4f20\u5b8c\u6210\n                xhr.addEventListener(\'load\', function () {\n                    if (xhr.status >= 200 && xhr.status < 300) {\n                        // \u66f4\u65b0\u6587\u4ef6\u72b6\u6001\n                        if (fileStatus) {\n                            fileStatus.textContent = \'\u4e0a\u4f20\u5b8c\u6210\';\n                            fileStatus.style.color = \'#27ae60\';\n                        }\n\n                        // \u663e\u793a\u54cd\u5e94\u6587\u672c\n                        if (responseText) responseText.textContent = xhr.responseText;\n\n                        successCount++;\n                    } else {\n                        // \u66f4\u65b0\u6587\u4ef6\u72b6\u6001\n                        if (fileStatus) {\n                            fileStatus.textContent = \'\u4e0a\u4f20\u5931\u8d25\';\n                            fileStatus.style.color = \'#e74c3c\';\n                        }\n\n                        // \u663e\u793a\u54cd\u5e94\u6587\u672c\n                        if (responseText) responseText.textContent = xhr.responseText || \"\";\n\n                        errorCount++;\n                    }\n                    scroll();\n\n                    // \u4e0a\u4f20\u4e0b\u4e00\u4e2a\u6587\u4ef6\n                    currentIndex++;\n                    uploadNextFile();\n                });\n\n                // \u4e0a\u4f20\u9519\u8bef\n                xhr.addEventListener(\'error\', function () {\n                    // \u66f4\u65b0\u6587\u4ef6\u72b6\u6001\n                    if (fileStatus) {\n                        fileStatus.textContent = \'\u7f51\u7edc\u9519\u8bef\';\n                        fileStatus.style.color = \'#e74c3c\';\n                    }\n                    scroll();\n\n                    errorCount++;\n\n                    // \u4e0a\u4f20\u4e0b\u4e00\u4e2a\u6587\u4ef6\n                    currentIndex++;\n                    uploadNextFile();\n                });\n\n                // \u53d1\u9001\u8bf7\u6c42\n                xhr.open(\'POST\', uploadForm.action, true);\n                xhr.send(formData);\n            }\n\n            // \u5f00\u59cb\u4e0a\u4f20\u7b2c\u4e00\u4e2a\u6587\u4ef6\n            uploadNextFile();\n        }\n\n        // \u4e0a\u4f20\u6587\u4ef6\u51fd\u6570\n        function uploadFiles() {\n            UploadPath.value = UploadPath.value.trim();\n\n            const uploadType = document.querySelector(\'input[name=\"uploadType\"]:checked\').value;\n\n            if (uploadType === \'unified\') {\n                uploadFilesUnified();\n            } else {\n                uploadFilesSequential();\n            }\n        }\n\n        // \u6dfb\u52a0\u4e0a\u4f20\u4e8b\u4ef6\u76d1\u542c\n        uploadBtn.addEventListener(\'click\', uploadFiles);\n\n        // \u521d\u59cb\u5316\u6587\u4ef6\u5217\u8868\n        updateFileList();\n    </script>\n</body>\n\n</html>"

    :goto_8
    return-object v0

    :cond_9
    const v0, 0x0

    goto :goto_8
.end method

.method public static ۟ۢۡۦۡ(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static ۣۢۨۨ(Ljava/lang/Object;)Lcom/xiaofei/Auto_restart_device;
    .registers 2

    invoke-static {}, Lcom/google/android/exoplayer2/video/ۥۣ۠ۡ;->۟ۢۨۨۧ()I

    move-result v0

    if-gez v0, :cond_d

    check-cast p0, Lcom/xiaofei/Auto_restart_device;

    invoke-virtual {p0}, Lcom/xiaofei/Auto_restart_device;->init()Lcom/xiaofei/Auto_restart_device;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static ۦۤۢۨ(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    invoke-static {}, Lcom/google/gson/reflect/۟ۡۥ;->ۡۢۧ()I

    move-result v0

    if-gez v0, :cond_d

    check-cast p0, Lcom/xiaofei/sound_effects;

    invoke-virtual {p0}, Lcom/xiaofei/sound_effects;->Get_Eq_Preset_List()Ljava/util/List;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static ۣۧۢۡ([SIII)Ljava/lang/String;
    .registers 7

    .prologue
    .line 25
    new-array v1, p2, [C

    .line 26
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_10

    .line 27
    add-int v2, p1, v0

    aget-short v2, p0, v2

    xor-int/2addr v2, p3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 29
    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static ۨۥۦ۟()I
    .registers 2

    const v0, 0xc1

    sget v1, Lcom/alibaba/fastjson/spi/۟ۥۥۤۢ;->ۣ۟ۧۤۤ:I

    xor-int/2addr v0, v1

    return v0
.end method
