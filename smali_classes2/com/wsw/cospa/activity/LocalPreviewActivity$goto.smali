.class Lcom/wsw/cospa/activity/LocalPreviewActivity$goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/LocalPreviewActivity;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/LocalPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$goto;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComicBackgroundColor(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$goto;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v1, v0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public onSwitchEyeCareMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$goto;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/base/BaseActivity;->super()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$goto;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/base/BaseActivity;->if()V

    :goto_0
    return-void
.end method

.method public onWindowBrightness(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$goto;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->v_brightness:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
