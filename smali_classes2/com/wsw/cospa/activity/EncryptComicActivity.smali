.class public Lcom/wsw/cospa/activity/EncryptComicActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final final:I = 0xa


# instance fields
.field private break:Ljava/lang/String;

.field public btnDecrypt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c9
    .end annotation
.end field

.field public btnEncrypt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900cb
    .end annotation
.end field

.field public btnExpander:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900cc
    .end annotation
.end field

.field public btnReplace:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d3
    .end annotation
.end field

.field private catch:Ljava/lang/String;

.field private class:J

.field private const:I

.field public etCipherLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090173
    .end annotation
.end field

.field public etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090174
    .end annotation
.end field

.field public etPlaintLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090178
    .end annotation
.end field

.field public etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090179
    .end annotation
.end field

.field public etRegularLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017b
    .end annotation
.end field

.field public etRegularText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017c
    .end annotation
.end field

.field public etReplaceLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017d
    .end annotation
.end field

.field public etReplaceSourceLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017e
    .end annotation
.end field

.field public etReplaceSourceText:Lcom/wsw/cospa/widget/EditTextWithScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017f
    .end annotation
.end field

.field public etReplaceText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090180
    .end annotation
.end field

.field private goto:Z

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field public sv_replace_layout:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e2
    .end annotation
.end field

.field private this:Ljava/lang/String;

.field public tvAesPassword:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045e
    .end annotation
.end field

.field public tvVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c4
    .end annotation
.end field

.field public tv_title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904be
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->goto:Z

    const-wide/16 v0, 0x27c

    .line 3
    iput-wide v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->class:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->const:I

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/EncryptComicActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/activity/EncryptComicActivity;->native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->a()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->const:I

    .line 2
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->catch:Ljava/lang/String;

    .line 3
    iget-object p5, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    const/4 p5, 0x0

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    .line 6
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 7
    iget p5, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->const:I

    aget-object p5, p2, p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 8
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "H"

    .line 9
    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Lcom/wsw/cospa/utils/goto;

    invoke-direct {p3}, Lcom/wsw/cospa/utils/goto;-><init>()V

    iget-object p4, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->break:Ljava/lang/String;

    invoke-static {p4}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p2, "T"

    .line 12
    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Lcom/wsw/cospa/utils/goto;

    invoke-direct {p3}, Lcom/wsw/cospa/utils/goto;-><init>()V

    iget-object p4, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->break:Ljava/lang/String;

    invoke-static {p4}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->class:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static public(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/EncryptComicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "COMIC_CONTENT"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static return(Landroid/app/Activity;ILcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/EncryptComicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ENCRYPT_TYPE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "comic_source"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0xa

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static static(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/EncryptComicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ENCRYPT_TYPE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "COMIC_CONTENT"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "COMIC_HOST"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0030

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "T"

    const-string v1, "H"

    const-string v2, "R"

    const/4 v3, 0x1

    const/4 v4, 0x4

    const-string v5, "_"

    const-string v6, "ENCRYPT_TYPE"

    const/4 v7, -0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 5
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 9
    const-class v2, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "comic_source"

    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, v7, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto/16 :goto_3

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    const-string v0, ":_S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "COMIC_CONTENT"

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    const-string v1, ":_T"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    const-string v1, ":_R"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    const-string v1, ":_H"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 19
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 20
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v7, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto/16 :goto_3

    .line 24
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 27
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v7, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 30
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto/16 :goto_3

    .line 31
    :sswitch_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnExpander:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->goto:Z

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 32
    sget-object p1, Lcom/wsw/cospa/utils/for;->new:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 38
    new-instance v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    invoke-direct {v3, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;-><init>(Landroid/content/Context;)V

    const-string v4, "\u9009\u62e9\u52a0\u5bc6\u7248\u672c\u53f7"

    .line 39
    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v1, Landroid/support/v4/g70;

    invoke-direct {v1, p0, v3, v2, p1}, Landroid/support/v4/g70;-><init>(Lcom/wsw/cospa/activity/EncryptComicActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3, v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 41
    iget p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->const:I

    invoke-virtual {v3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 42
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    goto/16 :goto_3

    .line 43
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_7

    .line 44
    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceSourceText:Lcom/wsw/cospa/widget/EditTextWithScrollView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etRegularText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "\u539f\u6587\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 48
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 49
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "\u6b63\u5219\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 50
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 51
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, ""

    .line 52
    :cond_6
    iget-object v2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 53
    :cond_7
    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v3, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    sget-object v4, Lcom/wsw/cospa/utils/for;->new:Ljava/util/Map;

    .line 56
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string p1, "\u660e\u6587\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 58
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v6, "\u8bf7\u9009\u62e9\u7248\u672c"

    .line 59
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string p1, "\u8bf7\u9009\u62e9\u52a0\u5bc6\u7248\u672c"

    .line 60
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 61
    :cond_9
    iget-object v6, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->catch:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 62
    iget-object v6, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->catch:Ljava/lang/String;

    .line 63
    :cond_a
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v6, ":_"

    if-eqz v2, :cond_b

    .line 64
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->catch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, p1}, Lcom/wsw/cospa/utils/for;->if(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 65
    :cond_b
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/goto;-><init>()V

    iget-object v2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->break:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->catch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lcom/wsw/cospa/utils/for;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 68
    :cond_c
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/goto;-><init>()V

    iget-object v2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->break:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->class:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->catch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lcom/wsw/cospa/utils/for;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->catch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4}, Lcom/wsw/cospa/utils/for;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 72
    :sswitch_3
    iget-object p1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string p1, "\u5bc6\u6587\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 74
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    const-string v4, ":"

    .line 75
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 76
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    if-eq v4, v7, :cond_f

    .line 77
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 78
    :cond_f
    sget-object p1, Lcom/wsw/cospa/utils/for;->new:Ljava/util/Map;

    .line 79
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    aget-object v7, v6, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 81
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 82
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_11

    .line 83
    aget-object p1, v6, v3

    invoke-static {v5, p1}, Lcom/wsw/cospa/utils/for;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 84
    :cond_11
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/goto;-><init>()V

    iget-object v2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->break:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    aget-object v0, v6, v3

    invoke-static {v0, p1}, Lcom/wsw/cospa/utils/for;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 87
    :cond_12
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/goto;-><init>()V

    iget-object v2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->break:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->class:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    aget-object v0, v6, v3

    invoke-static {v0, p1}, Lcom/wsw/cospa/utils/for;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 90
    :cond_13
    aget-object v0, v6, v3

    invoke-static {v0, p1}, Lcom/wsw/cospa/utils/for;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    :goto_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900c9 -> :sswitch_3
        0x7f0900cb -> :sswitch_2
        0x7f0900cc -> :sswitch_1
        0x7f0900d3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public this()V
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->case(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnEncrypt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnExpander:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->goto:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnReplace:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnDecrypt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ENCRYPT_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->sv_replace_layout:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etRegularLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnDecrypt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tv_title:Landroid/widget/TextView;

    const-string v4, "\u6b63\u5219\u66ff\u6362"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceSourceText:Lcom/wsw/cospa/widget/EditTextWithScrollView;

    const-string v4, "\u539f\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v4, "\u7ed3\u679c"

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnEncrypt:Landroid/widget/TextView;

    const-string v4, "\u66ff\u6362"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnReplace:Landroid/widget/TextView;

    const-string v4, "\u66ff\u6362\u539f\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "comic_source"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 21
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 22
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 25
    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v4, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceSourceText:Lcom/wsw/cospa/widget/EditTextWithScrollView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 27
    iget-object v4, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etReplaceSourceText:Lcom/wsw/cospa/widget/EditTextWithScrollView;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v6, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->sv_replace_layout:Landroid/widget/ScrollView;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 29
    iget-object v4, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ne v0, v3, :cond_1

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tv_title:Landroid/widget/TextView;

    const-string v4, "\u52a0\u5bc6\u6b63\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const-string v4, "\u6b63\u6587\u660e\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const-string v4, "\u6b63\u6587\u5bc6\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnReplace:Landroid/widget/TextView;

    const-string v4, "\u66ff\u6362\u6b63\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 34
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tv_title:Landroid/widget/TextView;

    const-string v4, "\u52a0\u5bc6\u7ae0\u8282\u5217\u8868"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const-string v4, "\u7ae0\u8282\u5217\u8868\u660e\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const-string v4, "\u7ae0\u8282\u5217\u8868\u5bc6\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnReplace:Landroid/widget/TextView;

    const-string v4, "\u66ff\u6362\u7ae0\u8282\u5217\u8868"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tv_title:Landroid/widget/TextView;

    const-string v4, "\u52a0\u5bc6\u53d1\u73b0\u5217\u8868"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const-string v4, "\u53d1\u73b0\u5217\u8868\u660e\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const-string v4, "\u53d1\u73b0\u5217\u8868\u5bc6\u6587"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->btnReplace:Landroid/widget/TextView;

    const-string v4, "\u66ff\u6362\u53d1\u73b0\u5217\u8868"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "COMIC_CONTENT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "COMIC_HOST"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->break:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 45
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    const-string v4, ":_S"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    const-string v4, ":_T"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    const-string v4, ":_R"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    const-string v4, ":_H"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etPlaintText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iget-object v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 47
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->etCipherText:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iget-object v4, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-array v1, v1, [Ljava/lang/String;

    if-eq v0, v2, :cond_6

    .line 49
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->this:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvVersion:Landroid/widget/TextView;

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    sget-object v0, Lcom/wsw/cospa/utils/for;->new:Ljava/util/Map;

    .line 52
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 53
    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 54
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "H"

    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v2}, Lcom/wsw/cospa/utils/goto;-><init>()V

    iget-object v3, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->break:Ljava/lang/String;

    invoke-static {v3}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v1, "T"

    .line 59
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v2}, Lcom/wsw/cospa/utils/goto;-><init>()V

    iget-object v3, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->break:Ljava/lang/String;

    invoke-static {v3}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->class:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 62
    :cond_9
    iget-object v1, p0, Lcom/wsw/cospa/activity/EncryptComicActivity;->tvAesPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_2
    return-void
.end method
