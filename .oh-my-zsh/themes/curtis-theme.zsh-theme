username() {
	echo "%n"
}

hostname() {
	echo "%m"
}

# timestamp
current_time() {
	echo "%{$FG[240]%}%*%{$reset_color%}"
}

directory() {
	echo "%2~"
}

right_triangle() {
    echo $'\ue0b0'
}

prompt_indicator() {
    echo $'%B\u276f%b'
}

# start of an arrow section
arrow_start() {
    echo "%{$FG[$ARROW_FG]%}%{$BG[$ARROW_BG]%}%B"
}

# end of an arrow section
arrow_end() {
    echo "%b%{$reset_color%}%{$FG[$ARROW_BG]%}%{$BG[$NEXT_ARROW_BG]%}$(right_triangle)%{$reset_color%}"
}

# arrow section with user
user_arrow() {
	ARROW_FG="177"
	ARROW_BG="235"
	NEXT_ARROW_BG="053"
	echo "$(arrow_start)$(username)$(arrow_end)"
}

# arrow section with hostname
host_arrow() {
	ARROW_FG="085"
	ARROW_BG="053"
	NEXT_ARROW_BG="023"
	echo "$(arrow_start)$(hostname)$(arrow_end)"
}

# arrow section with directory
directory_arrow() {
	ARROW_FG="255"
	ARROW_BG="023"
	NEXT_ARROW_BG="232"
	echo "$(arrow_start)$(directory)$(arrow_end)"
}

user_section() {
	echo "%{$FG[177]%}$(username)%f"
}

host_section() {
	echo "%{$FG[085]%}$(hostname)%f"
}

directory_section() {
	echo "%{$FG[087]%}$(directory)%f"
}

PROMPT='$(user_section) $(prompt_indicator) $(host_section) $(prompt_indicator) $(directory_section)
$(prompt_indicator) '
RPROMPT='$(current_time)'
