.class public final Lcom/google/android/material/datepicker/MaterialDatePicker$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public case:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final do:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field public else:I

.field public for:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public if:I

.field public new:I

.field public try:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lcom/google/android/material/datepicker/DateSelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->if:I

    .line 3
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->new:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->try:Ljava/lang/CharSequence;

    .line 5
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->case:Ljava/lang/Object;

    .line 6
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->else:I

    .line 7
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->do:Lcom/google/android/material/datepicker/DateSelector;

    return-void
.end method

.method public static for(Lcom/google/android/material/datepicker/DateSelector;)Lcom/google/android/material/datepicker/MaterialDatePicker$try;
    .locals 1
    .param p0    # Lcom/google/android/material/datepicker/DateSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$try<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$try;-><init>(Lcom/google/android/material/datepicker/DateSelector;)V

    return-object v0
.end method

.method private if()Lcom/google/android/material/datepicker/Month;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->for:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->break()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->case:J

    .line 2
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->for:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v2}, Lcom/google/android/material/datepicker/CalendarConstraints;->else()Lcom/google/android/material/datepicker/Month;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/material/datepicker/Month;->case:J

    .line 3
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->do:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v4}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->do:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v4}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    cmp-long v6, v4, v2

    if-gtz v6, :cond_0

    .line 5
    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/Month;->for(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/material/datepicker/MaterialDatePicker;->volatile()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1

    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    move-wide v0, v4

    .line 7
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->for(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    return-object v0
.end method

.method public static new()Lcom/google/android/material/datepicker/MaterialDatePicker$try;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$try<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;

    new-instance v1, Lcom/google/android/material/datepicker/SingleDateSelector;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/SingleDateSelector;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$try;-><init>(Lcom/google/android/material/datepicker/DateSelector;)V

    return-object v0
.end method

.method public static try()Lcom/google/android/material/datepicker/MaterialDatePicker$try;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$try<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;

    new-instance v1, Lcom/google/android/material/datepicker/RangeDateSelector;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/RangeDateSelector;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$try;-><init>(Lcom/google/android/material/datepicker/DateSelector;)V

    return-object v0
.end method


# virtual methods
.method public break(I)Lcom/google/android/material/datepicker/MaterialDatePicker$try;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$try<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->new:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->try:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public case(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialDatePicker$try;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$try<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->for:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object p0
.end method

.method public catch(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$try;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$try<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->try:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->new:I

    return-object p0
.end method

.method public do()Lcom/google/android/material/datepicker/MaterialDatePicker;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/MaterialDatePicker<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->for:Lcom/google/android/material/datepicker/CalendarConstraints;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$if;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$if;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$if;->do()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->for:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->new:I

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->do:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getDefaultTitleResId()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->new:I

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->case:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->do:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v1, v0}, Lcom/google/android/material/datepicker/DateSelector;->setSelection(Ljava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->for:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->this()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->for:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->if()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->const(Lcom/google/android/material/datepicker/Month;)V

    .line 9
    :cond_3
    invoke-static {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->extends(Lcom/google/android/material/datepicker/MaterialDatePicker$try;)Lcom/google/android/material/datepicker/MaterialDatePicker;

    move-result-object v0

    return-object v0
.end method

.method public else(I)Lcom/google/android/material/datepicker/MaterialDatePicker$try;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$try<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->else:I

    return-object p0
.end method

.method public goto(Ljava/lang/Object;)Lcom/google/android/material/datepicker/MaterialDatePicker$try;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$try<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->case:Ljava/lang/Object;

    return-object p0
.end method

.method public this(I)Lcom/google/android/material/datepicker/MaterialDatePicker$try;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$try<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$try;->if:I

    return-object p0
.end method
