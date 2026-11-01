.class public Lcom/wsw/cospa/activity/OnkeyEncryptActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final throw:I = 0x2712


# instance fields
.field public addComicSeekBarMainScrollThumb:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090082
    .end annotation
.end field

.field public addComicSeekBarWrapper:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090084
    .end annotation
.end field

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

.field public btn_decrypt_source:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ca
    .end annotation
.end field

.field public btn_export_decrypt_source:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900cd
    .end annotation
.end field

.field public btn_share_decrypt_source:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d4
    .end annotation
.end field

.field private catch:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field private class:Landroid/support/v4/xh1;

.field private const:I

.field public etEncrypt:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090175
    .end annotation
.end field

.field public etPlaintext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017a
    .end annotation
.end field

.field private final:I

.field private final goto:I

.field public ll_decrypt_source:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027f
    .end annotation
.end field

.field public ll_onkey_encrypt:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090285
    .end annotation
.end field

.field public mScrollView:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a7
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field private super:Ljava/lang/String;

.field private this:Z

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
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/16 v0, 0x2711

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->goto:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->this:Z

    .line 4
    iput v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->final:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->super:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ONKEY_ENCRYPT_TYPE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x2712

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic abstract(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->a()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->const:I

    .line 2
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    .line 3
    iget-object p5, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->tvAesPassword:Landroid/widget/TextView;

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

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 7
    iget p5, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->const:I

    aget-object p5, p2, p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 8
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->tvAesPassword:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private synthetic continue(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/do;->package()Ljava/util/List;

    move-result-object v3

    .line 2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContent()Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterList()Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-static {v8}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v12, "T"

    const-string v13, "H"

    const-string v14, "R"

    const-string v15, ":_H"

    const-string v10, ":_R"

    const-string v11, ":_T"

    move-object/from16 v16, v4

    const-string v4, ":_S"

    const-string v2, "_"

    move-object/from16 v17, v3

    const-string v3, ":_"

    if-eqz v9, :cond_4

    .line 6
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v9, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v5

    iget-object v5, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/wsw/cospa/utils/for;->if(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterList(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    move/from16 v18, v5

    .line 9
    iget-object v5, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v5

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v13

    new-instance v13, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v13}, Lcom/wsw/cospa/utils/goto;-><init>()V

    invoke-static {v5}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v5}, Lcom/wsw/cospa/utils/for;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterList(Ljava/lang/String;)V

    move-object v5, v12

    goto/16 :goto_3

    :cond_2
    move-object/from16 v19, v13

    .line 13
    iget-object v5, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v5

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v13}, Lcom/wsw/cospa/utils/goto;-><init>()V

    invoke-static {v5}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v12

    const-wide/16 v12, 0x27c

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 16
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/wsw/cospa/utils/for;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterList(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v5, v12

    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v1}, Lcom/wsw/cospa/utils/for;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterList(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_1
    move/from16 v18, v5

    :goto_2
    move-object v5, v12

    move-object/from16 v19, v13

    .line 18
    :goto_3
    invoke-static {v7}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 19
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_4

    .line 20
    :cond_5
    iget-object v4, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/wsw/cospa/utils/for;->if(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookContent(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 22
    :cond_6
    iget-object v4, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    move-object/from16 v8, v19

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 23
    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v8}, Lcom/wsw/cospa/utils/goto;-><init>()V

    invoke-static {v4}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v4}, Lcom/wsw/cospa/utils/for;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookContent(Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :cond_7
    iget-object v4, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 27
    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Lcom/wsw/cospa/utils/goto;

    invoke-direct {v8}, Lcom/wsw/cospa/utils/goto;-><init>()V

    invoke-static {v4}, Landroid/support/v4/de;->case(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/wsw/cospa/utils/goto;->for([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x27c

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v4}, Lcom/wsw/cospa/utils/for;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookContent(Ljava/lang/String;)V

    goto :goto_4

    .line 30
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->break:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v1}, Lcom/wsw/cospa/utils/for;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookContent(Ljava/lang/String;)V

    .line 31
    :cond_9
    :goto_4
    invoke-static {v6}, Lcom/wsw/cospa/model/do;->default(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_a
    move-object/from16 v17, v3

    move/from16 v18, v5

    .line 32
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    if-ne v5, v1, :cond_b

    .line 33
    invoke-static {}, Lcom/wsw/cospa/model/do;->c()V

    .line 34
    invoke-static {}, Lcom/wsw/cospa/utils/default;->extends()V

    .line 35
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    move-object/from16 v2, p2

    .line 36
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)Landroid/support/v4/xh1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->class:Landroid/support/v4/xh1;

    return-object p0
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->super:Ljava/lang/String;

    return-object p1
.end method

.method private finally(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$try;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$try;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Landroid/net/Uri;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$new;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$new;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private implements()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->catch:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/m71;

    invoke-direct {v1, p0}, Landroid/support/v4/m71;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->protected(Ljava/lang/Boolean;)V

    return-void
.end method

.method private instanceof()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2711

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic interface(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lcn/qqtheme/framework/picker/ComicFilePicker;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;-><init>(Landroid/app/Activity;I)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/popup/if;->implements(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/popup/if;->q(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/popup/if;->n(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;->D([Ljava/lang/String;)V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 8
    sget-object v0, Landroid/support/v4/wq;->native:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;->K(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.tencent.mobileqq/Tencent/QQfile_recv/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;->K(Ljava/lang/String;)V

    .line 13
    :goto_0
    new-instance v0, Landroid/support/v4/j71;

    invoke-direct {v0, p0}, Landroid/support/v4/j71;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;->setOnFilePickListener(Lcn/qqtheme/framework/picker/ComicFilePicker$OnFilePickListener;)V

    .line 14
    invoke-virtual {p1}, Lcn/qqtheme/framework/popup/do;->finally()V

    .line 15
    invoke-virtual {p1}, Lcn/qqtheme/framework/popup/if;->abstract()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u7cfb\u7edf\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1}, Lcn/qqtheme/framework/popup/if;->abstract()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/support/v4/i71;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/i71;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Lcn/qqtheme/framework/picker/ComicFilePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->continue(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic private(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "\u8bf7\u9009\u62e9\u7248\u672c"

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u9009\u62e9\u52a0\u5bc6\u7248\u672c"

    .line 3
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->transient(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic protected(Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->super:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "share_source_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "yyyy_MM_dd_HH_mm"

    invoke-static {v0, v1, v2}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Landroid/support/v4/wq;->public:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->super:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 11
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x18

    const-string v3, "android.intent.extra.STREAM"

    const/high16 v4, 0x10000000

    if-lt v0, v2, :cond_1

    .line 14
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 16
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const-string v0, "text/*"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u5206\u4eab\u56fe\u6e90"

    .line 22
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u8bf7\u5148\u89e3\u5bc6\u56fe\u6e90\uff01"

    .line 23
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->interface(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->strictfp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->private(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic strictfp(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->final:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->etEncrypt:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->volatile(Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->abstract(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic volatile(Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcn/qqtheme/framework/picker/ComicFilePicker;->do()V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->instanceof()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/xh1$do;

    invoke-direct {v0, p0}, Landroid/support/v4/xh1$do;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/xh1$do;->for(I)Landroid/support/v4/xh1$do;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u52a0\u5bc6..."

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/xh1$do;->new(Ljava/lang/CharSequence;)Landroid/support/v4/xh1$do;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/xh1$do;->do()Landroid/support/v4/xh1;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->class:Landroid/support/v4/xh1;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->etEncrypt:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBreakStrategy(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->etPlaintext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBreakStrategy(I)V

    :cond_0
    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c003c

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 p2, 0x2711

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_1

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->final:I

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->etEncrypt:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->final:I

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->etEncrypt:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/wsw/cospa/utils/default;->super(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900d4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->super:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decrypt_source_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "yyyy_MM_dd_HH_mm"

    invoke-static {v0, v1, v2}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Landroid/support/v4/wq;->public:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->super:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fe\u6e90\u5bfc\u51fa\u6210\u529f\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    const-string p1, "\u8bf7\u5148\u89e3\u5bc6\u56fe\u6e90"

    .line 13
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 14
    :pswitch_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->btnExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->this:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 15
    sget-object p1, Lcom/wsw/cospa/utils/for;->new:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 21
    new-instance v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    invoke-direct {v3, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v1, Landroid/support/v4/h71;

    invoke-direct {v1, p0, v3, v2, p1}, Landroid/support/v4/h71;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3, v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 23
    iget p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->const:I

    invoke-virtual {v3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 24
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    goto/16 :goto_1

    .line 25
    :pswitch_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->tvAesPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->catch:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v1

    .line 28
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v2, Landroid/support/v4/n71;

    invoke-direct {v2, p0, p1, v0}, Landroid/support/v4/n71;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {v1, v2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    .line 31
    :pswitch_3
    new-instance p1, Landroid/support/v4/xh1$do;

    invoke-direct {p1, p0}, Landroid/support/v4/xh1$do;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/support/v4/xh1$do;->for(I)Landroid/support/v4/xh1$do;

    move-result-object p1

    const-string v1, "\u6b63\u5728\u89e3\u5bc6\u56fe\u6e90..."

    .line 33
    invoke-virtual {p1, v1}, Landroid/support/v4/xh1$do;->new(Ljava/lang/CharSequence;)Landroid/support/v4/xh1$do;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/support/v4/xh1$do;->do()Landroid/support/v4/xh1;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->class:Landroid/support/v4/xh1;

    .line 35
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 36
    iget p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->final:I

    if-ne p1, v0, :cond_3

    .line 37
    new-instance p1, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$if;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$if;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 38
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 39
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$do;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V

    .line 40
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 41
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->etEncrypt:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->finally(Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 43
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->etEncrypt:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->package(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->synchronized()V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900ca
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ONKEY_ENCRYPT_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return v1

    .line 3
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090294

    if-ne v0, v2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->implements()V

    return v1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public package(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$else;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$else;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$case;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$case;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public synchronized()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->catch:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/l71;

    invoke-direct {v1, p0}, Landroid/support/v4/l71;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public this()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->addComicSeekBarMainScrollThumb:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-static {v0, v1}, Lcom/wsw/cospa/widget/ScrollBindHelper;->bind(Landroid/widget/SeekBar;Landroidx/core/widget/NestedScrollView;)Lcom/wsw/cospa/widget/ScrollBindHelper;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ONKEY_ENCRYPT_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->tv_title:Landroid/widget/TextView;

    const-string v2, "\u52a0\u5bc6\u7ae0\u8282\u548c\u6b63\u6587"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->ll_onkey_encrypt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->ll_decrypt_source:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->tv_title:Landroid/widget/TextView;

    const-string v2, "\u89e3\u5bc6\u56fe\u6e90"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->ll_onkey_encrypt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->ll_decrypt_source:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    :cond_1
    :goto_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->catch:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->btnEncrypt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->btnExpander:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->btnExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->this:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->btnDecrypt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->btn_decrypt_source:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->btn_export_decrypt_source:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->btn_share_decrypt_source:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public transient(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->class:Landroid/support/v4/xh1;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2
    new-instance v0, Landroid/support/v4/k71;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/k71;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;-><init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
