.class public Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private do:Landroid/util/SparseIntArray;

.field private for:I

.field private if:Landroid/util/SparseIntArray;


# direct methods
.method private constructor <init>(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->do:Landroid/util/SparseIntArray;

    .line 4
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->if:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;-><init>(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for(II)V

    return-void
.end method

.method private final for(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->do:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->append(II)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->if:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->append(II)V

    .line 3
    iget p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use appendWholeListCustomIndex for whole list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final try(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->do:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->if:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->append(II)V

    .line 3
    iget p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for:I

    return-void
.end method


# virtual methods
.method public final if(II)V
    .locals 1

    add-int/lit16 p2, p2, -0x3e8

    .line 1
    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->for(II)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Index conflicts with index used internally, please use negative number for custom item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final new(I)V
    .locals 1

    add-int/lit16 p1, p1, -0x3e8

    .line 1
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->try(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Index conflicts with index used internally, please use negative number for custom item"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
