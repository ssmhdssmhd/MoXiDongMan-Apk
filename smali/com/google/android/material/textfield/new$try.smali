.class Lcom/google/android/material/textfield/new$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/textfield/new;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/new$try;->do:Lcom/google/android/material/textfield/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/textfield/new;->try(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/new$try;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/new;->import(Lcom/google/android/material/textfield/new;Landroid/widget/AutoCompleteTextView;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/new$try;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/new;->native(Lcom/google/android/material/textfield/new;Landroid/widget/AutoCompleteTextView;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/new$try;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/new;->public(Lcom/google/android/material/textfield/new;Landroid/widget/AutoCompleteTextView;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/new$try;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v1}, Lcom/google/android/material/textfield/new;->return(Lcom/google/android/material/textfield/new;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/new$try;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v1}, Lcom/google/android/material/textfield/new;->return(Lcom/google/android/material/textfield/new;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-static {v0}, Lcom/google/android/material/textfield/new;->final(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/new$try;->do:Lcom/google/android/material/textfield/new;

    iget-object v0, v0, Lcom/google/android/material/textfield/try;->for:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/new$try;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v0}, Lcom/google/android/material/textfield/new;->else(Lcom/google/android/material/textfield/new;)Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V

    .line 13
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
