.class final Lcom/google/android/material/shape/MaterialShapeDrawable$new;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/MaterialShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation


# instance fields
.field public break:F

.field public case:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public catch:F

.field public class:F

.field public const:I

.field public do:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public else:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final:F

.field public for:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public goto:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public if:Landroid/support/v4/r60;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public import:I

.field public native:I

.field public new:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public public:I

.field public return:Z

.field public static:Landroid/graphics/Paint$Style;

.field public super:F

.field public this:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public throw:F

.field public try:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public while:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable$new;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/MaterialShapeDrawable$new;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->new:Landroid/content/res/ColorStateList;

    .line 24
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->try:Landroid/content/res/ColorStateList;

    .line 25
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->case:Landroid/content/res/ColorStateList;

    .line 26
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->else:Landroid/content/res/ColorStateList;

    .line 27
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 28
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->this:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->break:F

    .line 30
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->catch:F

    const/16 v0, 0xff

    .line 31
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->const:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->final:F

    .line 33
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->super:F

    .line 34
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->throw:F

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->while:I

    .line 36
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->import:I

    .line 37
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->native:I

    .line 38
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->public:I

    .line 39
    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->return:Z

    .line 40
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->static:Landroid/graphics/Paint$Style;

    .line 41
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->do:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->do:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 42
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->if:Landroid/support/v4/r60;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->if:Landroid/support/v4/r60;

    .line 43
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->class:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->class:F

    .line 44
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->for:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->for:Landroid/graphics/ColorFilter;

    .line 45
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->new:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->new:Landroid/content/res/ColorStateList;

    .line 46
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->try:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->try:Landroid/content/res/ColorStateList;

    .line 47
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->goto:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 48
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->else:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->else:Landroid/content/res/ColorStateList;

    .line 49
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->const:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->const:I

    .line 50
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->break:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->break:F

    .line 51
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->native:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->native:I

    .line 52
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->while:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->while:I

    .line 53
    iget-boolean v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->return:Z

    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->return:Z

    .line 54
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->catch:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->catch:F

    .line 55
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->final:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->final:F

    .line 56
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->super:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->super:F

    .line 57
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->throw:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->throw:F

    .line 58
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->import:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->import:I

    .line 59
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->public:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->public:I

    .line 60
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->case:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->case:Landroid/content/res/ColorStateList;

    .line 61
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->static:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->static:Landroid/graphics/Paint$Style;

    .line 62
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->this:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->this:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->this:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/support/v4/r60;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->new:Landroid/content/res/ColorStateList;

    .line 3
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->try:Landroid/content/res/ColorStateList;

    .line 4
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->case:Landroid/content/res/ColorStateList;

    .line 5
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->else:Landroid/content/res/ColorStateList;

    .line 6
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 7
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->this:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->break:F

    .line 9
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->catch:F

    const/16 v0, 0xff

    .line 10
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->const:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->final:F

    .line 12
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->super:F

    .line 13
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->throw:F

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->while:I

    .line 15
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->import:I

    .line 16
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->native:I

    .line 17
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->public:I

    .line 18
    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->return:Z

    .line 19
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->static:Landroid/graphics/Paint$Style;

    .line 20
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->do:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 21
    iput-object p2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$new;->if:Landroid/support/v4/r60;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$new;Lcom/google/android/material/shape/MaterialShapeDrawable$do;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->new(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)Z

    return-object v0
.end method
