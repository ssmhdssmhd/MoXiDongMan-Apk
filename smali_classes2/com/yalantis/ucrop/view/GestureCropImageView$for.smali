.class Lcom/yalantis/ucrop/view/GestureCropImageView$for;
.super Lcom/yalantis/ucrop/util/RotationGestureDetector$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/GestureCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final synthetic do:Lcom/yalantis/ucrop/view/GestureCropImageView;


# direct methods
.method private constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$for;->do:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-direct {p0}, Lcom/yalantis/ucrop/util/RotationGestureDetector$do;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/GestureCropImageView$for;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V

    return-void
.end method


# virtual methods
.method public onRotation(Lcom/yalantis/ucrop/util/RotationGestureDetector;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$for;->do:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/util/RotationGestureDetector;->for()F

    move-result p1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$for;->do:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->strictfp(Lcom/yalantis/ucrop/view/GestureCropImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$for;->do:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->volatile(Lcom/yalantis/ucrop/view/GestureCropImageView;)F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/yalantis/ucrop/view/TransformImageView;->this(FFF)V

    const/4 p1, 0x1

    return p1
.end method
