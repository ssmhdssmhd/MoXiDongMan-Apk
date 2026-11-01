.class public Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$HorizontalViewHolder;
.super Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalViewHolder"
.end annotation


# instance fields
.field public draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090235
    .end annotation
.end field

.field public iv_failure:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090240
    .end annotation
.end field

.field public tv_item:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090491
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$BrowseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
