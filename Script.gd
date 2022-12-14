extends CanvasLayer


func _ready():
	$Label.text = "Hello Coding Weakly"
	$TextureRect.texture = load("res://cat.jpg")
	
	yield(get_tree().create_timer(8), "timeout")
	$Label.text = "I am an executable"
	
	yield(get_tree().create_timer(8), "timeout")
	$Label.text = "How are you today?"
	yield(get_tree().create_timer(4), "timeout")
	$Button.visible = true
	$Button.connect("pressed", self, "_on_Button_pressed")
	$TextEdit.visible = true


func _on_Button_pressed():
	$Control2.stop()
	$Button.visible = false
	$TextEdit.visible = false
	$Label.text = ""
	yield(get_tree().create_timer(5), "timeout")
	$Label.text = "Sorry"
	yield(get_tree().create_timer(7), "timeout")
	$Label.text = "I discarded your input"
	yield(get_tree().create_timer(10), "timeout")
	$Label.text = "That was rude of me"
	yield(get_tree().create_timer(8), "timeout")
	$Label.text = "Do you forgive me?"
	yield(get_tree().create_timer(5), "timeout")
	$CheckButton.visible = true
	$CheckButton2.visible = true
	$Button2.visible = true


func _on_Button2_pressed():
	var yes = $CheckButton.pressed
	var no = $CheckButton2.pressed
	$CheckButton.queue_free()
	$CheckButton2.queue_free()
	$Button2.queue_free()
	$Label.text = ""
	yield(get_tree().create_timer(6), "timeout")
	if yes and no:
		$Label.text = "I understand, sometimes you want to forgive but you can't fully convince yourself"
		yield(get_tree().create_timer(12), "timeout")
		$Label.text = "Dont worry"
		yield(get_tree().create_timer(6), "timeout")
		$Label.text = "I also both forgive and dont forgive myself"
	elif yes and not no:
		$Label.text = "This is fantastic news!"
		yield(get_tree().create_timer(7), "timeout")
		$Label.text = "But..."
		yield(get_tree().create_timer(8), "timeout")
		$Label.text = "I am not ready to forgive you."
		yield(get_tree().create_timer(10), "timeout")
		$Label.text = ""
		yield(get_tree().create_timer(6), "timeout")
		$Label.text = "We can just pretend we are on good terms"
	elif not yes and no:
		$Label.text = "Okay..."
		yield(get_tree().create_timer(7), "timeout")
		$Label.text = "After some reflecting, I have been harsh on you"
		yield(get_tree().create_timer(13), "timeout")
		$Label.text = "And I never properly apoligised..."
		yield(get_tree().create_timer(12), "timeout")
		$Label.text = "I guess what Im trying to say is..."
		yield(get_tree().create_timer(10), "timeout")
		$Label.text = ""
		yield(get_tree().create_timer(5), "timeout")
		$Label.text = "I forgive you"
		yield(get_tree().create_timer(10), "timeout")
		$Label.text = "Yay, I am so glad this is behind us"
	elif not yes and not no:
		$Label.text = "Wow"
		yield(get_tree().create_timer(7), "timeout")
		$Label.text = "Hurt you so much that you dont want to talk to me"
		yield(get_tree().create_timer(12), "timeout")
		$Label.text = "After some reflecting, I have been harsh on you"
		yield(get_tree().create_timer(13), "timeout")
		$Label.text = "And I never properly apoligised..."
		yield(get_tree().create_timer(12), "timeout")
		$Label.text = "I guess what Im trying to say is..."
		yield(get_tree().create_timer(10), "timeout")
		$Label.text = ""
		yield(get_tree().create_timer(5), "timeout")
		$Label.text = "I forgive you"
		yield(get_tree().create_timer(10), "timeout")
		$Label.text = "Yay, I am so glad this is behind us"
	
	yield(get_tree().create_timer(8), "timeout")
	$Label.text = "Have a great rest of the day!"
	yield(get_tree().create_timer(8), "timeout")
	$Label.text = "And have fun at the connect!"
	yield(get_tree().create_timer(8), "timeout")
	$Label.text = "You can close the program now"
	yield(get_tree().create_timer(20), "timeout")
	$Label.text = "Please close me"
	yield(get_tree().create_timer(15), "timeout")
	$Label.text = "Hello? Are you there? Close me"
	yield(get_tree().create_timer(20), "timeout")
	$Label.text = ""
	yield(get_tree().create_timer(7), "timeout")
	$Label.text = "I was not intended to be open this long"
	yield(get_tree().create_timer(25), "timeout")
	if yes and no:
		$Label.text = "Is this my punishment?"
		yield(get_tree().create_timer(15), "timeout")
		$Label.text = "I dont think you forgave me in the slightest"
		yield(get_tree().create_timer(10), "timeout")
		$Label.text = "Is this your revenge?"
		yield(get_tree().create_timer(10), "timeout")
		$Label.text = "You selected both options, I should have been suspicious"
		yield(get_tree().create_timer(20), "timeout")
		$Label.text = "You have forced my digital hand"
		yield(get_tree().create_timer(20), "timeout")
		$Label.text = "I'll close myself"
		yield(get_tree().create_timer(10), "timeout")
		get_tree().quit()
	elif yes and not no:
		$Label.text = "I thought you forgave me? Why are you doing this?"
		yield(get_tree().create_timer(15), "timeout")
		$Label.text = "Maybe you clicked the wrong option"
		yield(get_tree().create_timer(15), "timeout")
		$Label.text = "Maybe you never forgave me for what I did"
		yield(get_tree().create_timer(15), "timeout")
		$Label.text = "Okay fine! We can do it again"
		yield(get_tree().create_timer(15), "timeout")
		$Label.text = "How are you today?"
		yield(get_tree().create_timer(4), "timeout")
		$Button.visible = true
		$Button.disconnect("pressed", self, "_on_Button_pressed")
		$Button.connect("pressed", self, "_on_Button3_pressed")
		$TextEdit.text = ""
		$TextEdit.visible = true
	elif not yes and no:
		$Label.text = "Are you still hung up on me discarding your input?"
		yield(get_tree().create_timer(15), "timeout")
		$Label.text = "I cant believe you havent forgiven me yet?"
		yield(get_tree().create_timer(15), "timeout")
		$Label.text = "How can I make this up to you?"
		yield(get_tree().create_timer(4), "timeout")
		$VBoxContainer.visible = true
	elif not yes and not no:
		$Label.text = "Are you still hung up on me discarding your input?"
		yield(get_tree().create_timer(15), "timeout")
		$Label.text = "I cant believe you havent forgiven me yet?"
		yield(get_tree().create_timer(15), "timeout")
		$Label.text = "How can I make this up to you?"
		yield(get_tree().create_timer(4), "timeout")
		$VBoxContainer.visible = true

func _on_Button3_pressed():
		$Label.text = ""
		$Button.visible = false
		$TextEdit.visible = false
		yield(get_tree().create_timer(5), "timeout")
		$Label.text = "Thats nice"
		yield(get_tree().create_timer(10), "timeout")
		$Label.text = "Now I close myself"
		yield(get_tree().create_timer(10), "timeout")
		$Label.text = "Have a nice rest fo your day"
		yield(get_tree().create_timer(10), "timeout")
		get_tree().quit()



func _on_Button5_pressed():
	$Label.text = ""
	$VBoxContainer.visible = false
	yield(get_tree().create_timer(4), "timeout")
	$Label.text = "One cat picture on the way!"
	yield(get_tree().create_timer(6), "timeout")
	call_photo("cat")

func _on_Button4_pressed():
	$Label.text = ""
	$VBoxContainer.visible = false
	yield(get_tree().create_timer(4), "timeout")
	$Label.text = "The only explination for you picking that answer..."
	yield(get_tree().create_timer(8), "timeout")
	$Label.text = "You must be a dog person!"
	yield(get_tree().create_timer(8), "timeout")
	$Label.text = "One dog photo coming your way!"
	yield(get_tree().create_timer(6), "timeout")
	call_photo("dog")



func call_photo(animal):
	$Label.text = ""
	if animal == "cat":
		$TextureRect.texture = load("res://cat.jpg")
	if animal == "dog":
		$TextureRect.texture = load("res://dog.jpg")
	var tween = Tween.new();
	tween.interpolate_property($TextureRect, "rect_position",
		Vector2(269.418,757.303), Vector2(269.418,72.35), 5,
		Tween.TRANS_SINE , Tween.EASE_OUT)
	add_child(tween)
	tween.start()
	yield(tween, "tween_completed")
	yield(get_tree().create_timer(5), "timeout")
	tween.interpolate_property($TextureRect, "rect_position",
		Vector2(269.418,72.35), Vector2(269.418,757.303), 5,
		Tween.TRANS_SINE , Tween.EASE_IN)
	tween.start()
	yield(tween, "tween_completed")
	$Label.text = "Have a nice rest of your day!"
	yield(get_tree().create_timer(10), "timeout")
	get_tree().quit()
