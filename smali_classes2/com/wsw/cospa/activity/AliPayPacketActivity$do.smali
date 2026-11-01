.class Lcom/wsw/cospa/activity/AliPayPacketActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AliPayPacketActivity;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AliPayPacketActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AliPayPacketActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AliPayPacketActivity$do;->do:Lcom/wsw/cospa/activity/AliPayPacketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/AliPayPacketActivity$do;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/AliPayPacketActivity$do;->if(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic if(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/activity/AliPayPacketActivity$do;->do:Lcom/wsw/cospa/activity/AliPayPacketActivity;

    invoke-static {p2}, Landroid/support/v4/ed1;->do(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/activity/AliPayPacketActivity$do;->do:Lcom/wsw/cospa/activity/AliPayPacketActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080163

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AliPayPacketActivity$do;->do:Lcom/wsw/cospa/activity/AliPayPacketActivity;

    invoke-static {v0, p2}, Lcom/wsw/cospa/utils/this;->break(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p1, "\u8bf7\u53bb\u8bbe\u7f6e\u6253\u5f00\u6587\u4ef6\u8bfb\u5199\u6743\u9650"

    .line 5
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    iget-object v0, p0, Lcom/wsw/cospa/activity/AliPayPacketActivity$do;->do:Lcom/wsw/cospa/activity/AliPayPacketActivity;

    invoke-direct {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;-><init>(Landroid/content/Context;)V

    const-string v0, "\u64cd\u4f5c"

    .line 2
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    new-instance v0, Lcom/wsw/cospa/activity/try;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/try;-><init>(Lcom/wsw/cospa/activity/AliPayPacketActivity$do;)V

    const-string v1, "\u4fdd\u5b58\u4e8c\u7ef4\u7801\u56fe\u7247"

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    return-void
.end method
