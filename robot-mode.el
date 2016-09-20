(defvar robot-mode-header
  '("^\\*\\{3\\}[ \t]+\\(Settings\\|Test Cases\\|Keywords\\|Variables\\)[ \t]+\\*\\{3\\}" . font-lock-keyword-face)
  "Header keywords")

(defvar robot-mode-test-case-settings
  '("\\[\\(Documentation\\|Tags\\|Setup\\|Teardown\\|Template\\|Timeout\\)\\]" . font-lock-keyword-face)
  "Test case settings keyword")

(defvar robot-mode-comment
  '("^[\s\ta-zA-Z0-9]*\\(#.*\\)$" . (1 font-lock-comment-face))
  (concat
    "Comment"
    "FIXME: it does not tokenizes when Test Case have embeded variable"))

(defvar robot-mode-variable
  '("[\\$&@]{.*}" . font-lock-variable-name-face))

(defvar robot-mode-test-case-keywords-name
  '("^[^\s].*$" . font-lock-function-name-face)
  (concat
    "Tokenizes test case and keyword name"
    "FIXME: it does not tokenizes when Test Case have embeded variable"))

(defvar robot-mode-font-lock-keywords
  (list
    robot-mode-header
    robot-mode-test-case-settings
    robot-mode-comment
    robot-mode-variable
    robot-mode-test-case-keywords-name)
  "All available keywords")

(define-derived-mode robot-mode fundamental-mode "Robot Framework"
  "A major mode for Robot Framework."
  (setq-local font-lock-defaults
    '(robot-mode-font-lock-keywords)))

(add-to-list 'auto-mode-alist '("\\.robot\\'" . robot-mode))

(provide 'robot-mode)
;; robot-mode ends here
