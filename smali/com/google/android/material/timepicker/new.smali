.class Lcom/google/android/material/timepicker/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
.implements Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
.implements Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
.implements Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;
.implements Lcom/google/android/material/timepicker/TimePickerPresenter;


# static fields
.field private static final break:I = 0x6

.field private static final case:[Ljava/lang/String;

.field private static final else:[Ljava/lang/String;

.field private static final goto:[Ljava/lang/String;

.field private static final this:I = 0x1e


# instance fields
.field private do:Lcom/google/android/material/timepicker/TimePickerView;

.field private for:F

.field private if:Lcom/google/android/material/timepicker/TimeModel;

.field private new:F

.field private try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string v0, "12"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "10"

    const-string v11, "11"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/new;->case:[Ljava/lang/String;

    const-string v1, "00"

    const-string v2, "2"

    const-string v3, "4"

    const-string v4, "6"

    const-string v5, "8"

    const-string v6, "10"

    const-string v7, "12"

    const-string v8, "14"

    const-string v9, "16"

    const-string v10, "18"

    const-string v11, "20"

    const-string v12, "22"

    .line 2
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/new;->else:[Ljava/lang/String;

    const-string v1, "00"

    const-string v2, "5"

    const-string v3, "10"

    const-string v4, "15"

    const-string v5, "20"

    const-string v6, "25"

    const-string v7, "30"

    const-string v8, "35"

    const-string v9, "40"

    const-string v10, "45"

    const-string v11, "50"

    const-string v12, "55"

    .line 3
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/new;->goto:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/new;->try:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    .line 4
    iput-object p2, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/new;->initialize()V

    return-void
.end method

.method private case()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/material/timepicker/new;->case:[Ljava/lang/String;

    const-string v1, "%d"

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/new;->else([Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/material/timepicker/new;->else:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/new;->else([Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/google/android/material/timepicker/new;->goto:[Ljava/lang/String;

    const-string v1, "%02d"

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/new;->else([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private do()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->for:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    return v0
.end method

.method private else([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-static {v1, v2, p2}, Lcom/google/android/material/timepicker/TimeModel;->if(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private for(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v0, Lcom/google/android/material/timepicker/TimeModel;->try:I

    if-ne v1, p2, :cond_0

    iget p2, v0, Lcom/google/android/material/timepicker/TimeModel;->new:I

    if-eq p2, p1, :cond_2

    .line 2
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_2
    return-void
.end method

.method private if()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->for:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/timepicker/new;->else:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/timepicker/new;->case:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private try()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v2, v1, Lcom/google/android/material/timepicker/TimeModel;->else:I

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/TimeModel;->for()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->try:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/material/timepicker/TimePickerView;->updateTime(III)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->for:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerView;->catch()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->goto(Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnPeriodChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/timepicker/new;->case()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/new;->invalidate()V

    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimeModel;->for()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/timepicker/new;->do()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/timepicker/new;->new:F

    .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v0, Lcom/google/android/material/timepicker/TimeModel;->try:I

    mul-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/timepicker/new;->for:F

    .line 4
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->case:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/timepicker/new;->new(IZ)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/timepicker/new;->try()V

    return-void
.end method

.method public new(IZ)V
    .locals 4

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->new(Z)V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v1, Lcom/google/android/material/timepicker/TimeModel;->case:I

    .line 3
    iget-object v1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/android/material/timepicker/new;->goto:[Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/timepicker/new;->if()[Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_2

    sget v3, Lcom/google/android/material/R$string;->material_minute_suffix:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/google/android/material/R$string;->material_hour_suffix:I

    .line 5
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->setValues([Ljava/lang/String;I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/timepicker/new;->for:F

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/google/android/material/timepicker/new;->new:F

    :goto_3
    invoke-virtual {v1, v0, p2}, Lcom/google/android/material/timepicker/TimePickerView;->try(FZ)V

    .line 7
    iget-object p2, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/TimePickerView;->setActiveSelection(I)V

    .line 8
    iget-object p1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance p2, Lcom/google/android/material/timepicker/do;

    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->material_hour_selection:I

    invoke-direct {p2, v0, v1}, Lcom/google/android/material/timepicker/do;-><init>(Landroid/content/Context;I)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/TimePickerView;->else(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance p2, Lcom/google/android/material/timepicker/do;

    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->material_minute_selection:I

    invoke-direct {p2, v0, v1}, Lcom/google/android/material/timepicker/do;-><init>(Landroid/content/Context;I)V

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/TimePickerView;->case(Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public onActionUp(FZ)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/new;->try:Z

    .line 2
    iget-object v1, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v2, v1, Lcom/google/android/material/timepicker/TimeModel;->try:I

    .line 3
    iget v3, v1, Lcom/google/android/material/timepicker/TimeModel;->new:I

    .line 4
    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->case:I

    const/4 v4, 0x0

    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    iget p2, p0, Lcom/google/android/material/timepicker/new;->new:F

    invoke-virtual {p1, p2, v4}, Lcom/google/android/material/timepicker/TimePickerView;->try(FZ)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/new;->new(IZ)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-nez p2, :cond_1

    add-int/lit8 p1, p1, 0xf

    .line 11
    div-int/lit8 p1, p1, 0x1e

    .line 12
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    mul-int/lit8 p1, p1, 0x5

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->this(I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget p1, p1, Lcom/google/android/material/timepicker/TimeModel;->try:I

    mul-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/timepicker/new;->for:F

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    iget v0, p0, Lcom/google/android/material/timepicker/new;->for:F

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/timepicker/TimePickerView;->try(FZ)V

    .line 15
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/new;->try:Z

    .line 16
    invoke-direct {p0}, Lcom/google/android/material/timepicker/new;->try()V

    .line 17
    invoke-direct {p0, v3, v2}, Lcom/google/android/material/timepicker/new;->for(II)V

    return-void
.end method

.method public onPeriodChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->break(I)V

    return-void
.end method

.method public onRotate(FZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/new;->try:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v0, Lcom/google/android/material/timepicker/TimeModel;->new:I

    .line 3
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->try:I

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 5
    iget-object v2, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v2, Lcom/google/android/material/timepicker/TimeModel;->case:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    add-int/lit8 p1, p1, 0x3

    .line 6
    div-int/lit8 p1, p1, 0x6

    invoke-virtual {v2, p1}, Lcom/google/android/material/timepicker/TimeModel;->this(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    iget p1, p1, Lcom/google/android/material/timepicker/TimeModel;->try:I

    mul-int/lit8 p1, p1, 0x6

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Lcom/google/android/material/timepicker/new;->for:F

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/timepicker/new;->do()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 9
    iget-object v3, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    add-int/2addr p1, v2

    invoke-direct {p0}, Lcom/google/android/material/timepicker/new;->do()I

    move-result v2

    div-int/2addr p1, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/timepicker/TimeModel;->else(I)V

    .line 10
    iget-object p1, p0, Lcom/google/android/material/timepicker/new;->if:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimeModel;->for()I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/material/timepicker/new;->do()I

    move-result v2

    mul-int p1, p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/timepicker/new;->new:F

    :goto_0
    if-nez p2, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/timepicker/new;->try()V

    .line 12
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/timepicker/new;->for(II)V

    :cond_2
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/new;->new(IZ)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/new;->do:Lcom/google/android/material/timepicker/TimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
