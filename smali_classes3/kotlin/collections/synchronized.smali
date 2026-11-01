.class final Lkotlin/collections/synchronized;
.super Lkotlin/collections/new;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/new<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n205#1:208\n205#1:209\n205#1:211\n1#2:210\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n106#1:208\n176#1:209\n189#1:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u001f\u0012\u000e\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000f\u0012\u0006\u0010)\u001a\u00020\u0005\u00a2\u0006\u0004\u0008*\u0010+B\u0011\u0008\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008*\u0010,J\u0015\u0010\u0007\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0082\u0008J\u0018\u0010\t\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\u0005H\u0096\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH\u0096\u0002J)\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000f\"\u0004\u0008\u0001\u0010\u00012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0014J\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0015\u001a\u00020\u0005J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0005R\u0016\u0010\u001e\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001dR$\u0010%\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00058\u0016@RX\u0096\u000e\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008#\u0010$R\u001e\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006-"
    }
    d2 = {
        "Lkotlin/collections/synchronized;",
        "T",
        "Lkotlin/collections/new;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "",
        "n",
        "break",
        "index",
        "get",
        "(I)Ljava/lang/Object;",
        "",
        "catch",
        "",
        "iterator",
        "",
        "array",
        "toArray",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "",
        "()[Ljava/lang/Object;",
        "maxCapacity",
        "this",
        "element",
        "Landroid/support/v4/ub2;",
        "goto",
        "(Ljava/lang/Object;)V",
        "class",
        "do",
        "I",
        "capacity",
        "if",
        "startIndex",
        "<set-?>",
        "for",
        "getSize",
        "()I",
        "size",
        "new",
        "[Ljava/lang/Object;",
        "buffer",
        "filledSize",
        "<init>",
        "([Ljava/lang/Object;I)V",
        "(I)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final do:I

.field private for:I

.field private if:I

.field private final new:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlin/collections/synchronized;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlin/collections/new;-><init>()V

    iput-object p1, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 2
    array-length v2, p1

    if-gt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    array-length p1, p1

    iput p1, p0, Lkotlin/collections/synchronized;->do:I

    .line 4
    iput p2, p0, Lkotlin/collections/synchronized;->for:I

    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ring buffer filled size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cannot be larger than the buffer size: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ring buffer filled size should not be negative but it is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final break(II)I
    .locals 0

    add-int/2addr p1, p2

    .line 1
    invoke-static {p0}, Lkotlin/collections/synchronized;->for(Lkotlin/collections/synchronized;)I

    move-result p2

    rem-int/2addr p1, p2

    return p1
.end method

.method public static final synthetic case(Lkotlin/collections/synchronized;I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/collections/synchronized;->for:I

    return-void
.end method

.method public static final synthetic do(Lkotlin/collections/synchronized;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlin/collections/synchronized;->break(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic else(Lkotlin/collections/synchronized;I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/collections/synchronized;->if:I

    return-void
.end method

.method public static final synthetic for(Lkotlin/collections/synchronized;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/collections/synchronized;->do:I

    return p0
.end method

.method public static final synthetic if(Lkotlin/collections/synchronized;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic new(Lkotlin/collections/synchronized;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result p0

    return p0
.end method

.method public static final synthetic try(Lkotlin/collections/synchronized;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/collections/synchronized;->if:I

    return p0
.end method


# virtual methods
.method public final catch()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v0

    iget v1, p0, Lkotlin/collections/synchronized;->do:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final class(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v2

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-lez p1, :cond_3

    .line 2
    iget v0, p0, Lkotlin/collections/synchronized;->if:I

    add-int v2, v0, p1

    .line 3
    invoke-static {p0}, Lkotlin/collections/synchronized;->for(Lkotlin/collections/synchronized;)I

    move-result v3

    rem-int/2addr v2, v3

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    .line 4
    iget-object v4, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    iget v5, p0, Lkotlin/collections/synchronized;->do:I

    invoke-static {v4, v3, v0, v5}, Lkotlin/collections/goto;->A1([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 5
    iget-object v0, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2}, Lkotlin/collections/goto;->A1([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object v1, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    invoke-static {v1, v3, v0, v2}, Lkotlin/collections/goto;->A1([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 7
    :goto_2
    iput v2, p0, Lkotlin/collections/synchronized;->if:I

    .line 8
    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lkotlin/collections/synchronized;->for:I

    :cond_3
    return-void

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n shouldn\'t be greater than the buffer size: n = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n shouldn\'t be negative but it is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/collections/new;->Companion:Lkotlin/collections/new$do;

    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/new$do;->if(II)V

    .line 2
    iget-object v0, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/synchronized;->if:I

    add-int/2addr v1, p1

    .line 3
    invoke-static {p0}, Lkotlin/collections/synchronized;->for(Lkotlin/collections/synchronized;)I

    move-result p1

    rem-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/synchronized;->for:I

    return v0
.end method

.method public final goto(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/synchronized;->catch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/synchronized;->if:I

    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    invoke-static {p0}, Lkotlin/collections/synchronized;->for(Lkotlin/collections/synchronized;)I

    move-result v2

    rem-int/2addr v1, v2

    aput-object p1, v0, v1

    .line 4
    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/synchronized;->for:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ring buffer is full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/collections/synchronized$do;

    invoke-direct {v0, p0}, Lkotlin/collections/synchronized$do;-><init>(Lkotlin/collections/synchronized;)V

    return-object v0
.end method

.method public final this(I)Lkotlin/collections/synchronized;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/collections/synchronized<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/collections/synchronized;->do:I

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lkotlin/ranges/new;->return(II)I

    move-result p1

    .line 2
    iget v0, p0, Lkotlin/collections/synchronized;->if:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkotlin/collections/synchronized;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    new-instance v0, Lkotlin/collections/synchronized;

    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/collections/synchronized;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/synchronized;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v0

    .line 3
    iget v1, p0, Lkotlin/collections/synchronized;->if:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 4
    iget v4, p0, Lkotlin/collections/synchronized;->do:I

    if-ge v1, v4, :cond_1

    .line 5
    iget-object v4, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_2

    .line 6
    iget-object v1, p0, Lkotlin/collections/synchronized;->new:[Ljava/lang/Object;

    aget-object v1, v1, v2

    aput-object v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_2
    array-length v0, p1

    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lkotlin/collections/do;->size()I

    move-result v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_3
    return-object p1
.end method
