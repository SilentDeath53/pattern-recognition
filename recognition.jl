using Images, ImageFeatures

function pattern_recognition(image_path)
    image = load(image_path)

    gray_image = Gray.(image)

    keypoints = sift(gray_image)

    println("Detected Keypoints:")
    for keypoint in keypoints
        println(keypoint)
    end
end

pattern_recognition("image.jpg")
