.class public Lcom/wsw/cospa/activity/EncryptComicActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/EncryptComicActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/EncryptComicActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/EncryptComicActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/EncryptComicActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/EncryptComicActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/EncryptComicActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904be

    const-string v2, "field \'tv_title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->tv_title:Landroid/widget/TextView;

    .line 6
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f090178

    const-string v2, "field \'etPlaintLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090179

    const-string v2, "field \'etPlaintText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900cb

    const-string v2, "field \'btnEncrypt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnEncrypt:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900c9

    const-string v2, "field \'btnDecrypt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnDecrypt:Landroid/widget/TextView;

    .line 10
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f090173

    const-string v2, "field \'etCipherLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090174

    const-string v2, "field \'etCipherText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 12
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09017b

    const-string v2, "field \'etRegularLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etRegularLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09017c

    const-string v2, "field \'etRegularText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etRegularText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 14
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09017d

    const-string v2, "field \'etReplaceLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 15
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090180

    const-string v2, "field \'etReplaceText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904c4

    const-string v2, "field \'tvVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvVersion:Landroid/widget/TextView;

    .line 17
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0900cc

    const-string v2, "field \'btnExpander\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnExpander:Landroid/widget/ImageView;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045e

    const-string v2, "field \'tvAesPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900d3

    const-string v2, "field \'btnReplace\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnReplace:Landroid/widget/TextView;

    .line 20
    const-class v0, Landroid/widget/ScrollView;

    const v1, 0x7f0903e2

    const-string v2, "field \'sv_replace_layout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->sv_replace_layout:Landroid/widget/ScrollView;

    .line 21
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09017e

    const-string v2, "field \'etReplaceSourceLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceSourceLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 22
    const-class v0, Lcom/wsw/cospa/widget/EditTextWithScrollView;

    const v1, 0x7f09017f

    const-string v2, "field \'etReplaceSourceText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/widget/EditTextWithScrollView;

    iput-object p2, p1, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceSourceText:Lcom/wsw/cospa/widget/EditTextWithScrollView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/EncryptComicActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/EncryptComicActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tv_title:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnEncrypt:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnDecrypt:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etRegularLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etRegularText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvVersion:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnExpander:Landroid/widget/ImageView;

    .line 17
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnReplace:Landroid/widget/TextView;

    .line 19
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->sv_replace_layout:Landroid/widget/ScrollView;

    .line 20
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceSourceLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 21
    iput-object v1, v0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceSourceText:Lcom/wsw/cospa/widget/EditTextWithScrollView;

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
