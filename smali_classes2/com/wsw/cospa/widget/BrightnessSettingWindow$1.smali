.class Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/BrightnessSettingWindow;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

.field public final synthetic val$colors:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/BrightnessSettingWindow;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->this$0:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    iput-object p2, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->val$colors:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->this$0:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-static {v0}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->access$000(Lcom/wsw/cospa/widget/BrightnessSettingWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->this$0:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-static {v1}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->access$100(Lcom/wsw/cospa/widget/BrightnessSettingWindow;)Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->this$0:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-static {v1}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->access$200(Lcom/wsw/cospa/widget/BrightnessSettingWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->val$colors:[Ljava/lang/String;

    aget-object v2, v2, p2

    const-string v3, "comic_background_color_text"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->this$0:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-static {v1}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->access$200(Lcom/wsw/cospa/widget/BrightnessSettingWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "comic_background_color"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->this$0:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-static {v1}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->access$100(Lcom/wsw/cospa/widget/BrightnessSettingWindow;)Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;->onComicBackgroundColor(Ljava/lang/Integer;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->this$0:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    iget-object v0, v0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->tv_comic_bg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;->val$colors:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
