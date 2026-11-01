.class Lcom/google/android/material/slider/BaseSlider$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/util/AttributeSet;

.field public final synthetic for:Lcom/google/android/material/slider/BaseSlider;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$do;->for:Lcom/google/android/material/slider/BaseSlider;

    iput-object p2, p0, Lcom/google/android/material/slider/BaseSlider$do;->do:Landroid/util/AttributeSet;

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider$do;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTooltipDrawable()Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$do;->for:Lcom/google/android/material/slider/BaseSlider;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$do;->do:Landroid/util/AttributeSet;

    sget-object v3, Lcom/google/android/material/R$styleable;->Slider:[I

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider$do;->if:I

    sget v5, Lcom/google/android/material/slider/BaseSlider;->w:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 3
    invoke-static/range {v1 .. v6}, Landroid/support/v4/k62;->break(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$do;->for:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/material/slider/BaseSlider;->do(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method
