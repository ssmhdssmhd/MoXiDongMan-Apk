.class Lcc/shinichi/library/view/ImagePreviewAdapter$goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/ImagePreviewAdapter;->else(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/widget/ProgressBar;

.field public final synthetic if:Lcc/shinichi/library/view/ImagePreviewAdapter;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/ImagePreviewAdapter;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$goto;->if:Lcc/shinichi/library/view/ImagePreviewAdapter;

    iput-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$goto;->do:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onImageLoaded()V
    .locals 0

    return-void
.end method

.method public onPreviewLoadError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onPreviewReleased()V
    .locals 0

    return-void
.end method

.method public onReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$goto;->do:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onTileLoadError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
