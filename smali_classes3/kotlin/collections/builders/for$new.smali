.class public Lkotlin/collections/builders/for$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,627:1\n1#2:628\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0010\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u00020\u0003B\u001b\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0004R\"\u0010\u0010\u001a\u00020\n8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u000b\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0013\u001a\u00020\n8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR(\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00148\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0015\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "kotlin/collections/builders/for$new",
        "K",
        "V",
        "",
        "Landroid/support/v4/ub2;",
        "new",
        "()V",
        "",
        "hasNext",
        "remove",
        "",
        "do",
        "I",
        "()I",
        "try",
        "(I)V",
        "index",
        "if",
        "case",
        "lastIndex",
        "Lkotlin/collections/builders/for;",
        "for",
        "Lkotlin/collections/builders/for;",
        "()Lkotlin/collections/builders/for;",
        "map",
        "<init>",
        "(Lkotlin/collections/builders/for;)V",
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
.field private do:I

.field private final for:Lkotlin/collections/builders/for;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/for<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private if:I


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/for;)V
    .locals 1
    .param p1    # Lkotlin/collections/builders/for;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/for<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/builders/for$new;->for:Lkotlin/collections/builders/for;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lkotlin/collections/builders/for$new;->if:I

    .line 3
    invoke-virtual {p0}, Lkotlin/collections/builders/for$new;->new()V

    return-void
.end method


# virtual methods
.method public final case(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/collections/builders/for$new;->if:I

    return-void
.end method

.method public final do()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/builders/for$new;->do:I

    return v0
.end method

.method public final for()Lkotlin/collections/builders/for;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/for<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for$new;->for:Lkotlin/collections/builders/for;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/collections/builders/for$new;->do:I

    iget-object v1, p0, Lkotlin/collections/builders/for$new;->for:Lkotlin/collections/builders/for;

    invoke-static {v1}, Lkotlin/collections/builders/for;->for(Lkotlin/collections/builders/for;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final if()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/builders/for$new;->if:I

    return v0
.end method

.method public final new()V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lkotlin/collections/builders/for$new;->do:I

    iget-object v1, p0, Lkotlin/collections/builders/for$new;->for:Lkotlin/collections/builders/for;

    invoke-static {v1}, Lkotlin/collections/builders/for;->for(Lkotlin/collections/builders/for;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/collections/builders/for$new;->for:Lkotlin/collections/builders/for;

    invoke-static {v0}, Lkotlin/collections/builders/for;->new(Lkotlin/collections/builders/for;)[I

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/for$new;->do:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, p0, Lkotlin/collections/builders/for$new;->do:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/collections/builders/for$new;->if:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lkotlin/collections/builders/for$new;->for:Lkotlin/collections/builders/for;

    invoke-virtual {v0}, Lkotlin/collections/builders/for;->final()V

    .line 3
    iget-object v0, p0, Lkotlin/collections/builders/for$new;->for:Lkotlin/collections/builders/for;

    iget v2, p0, Lkotlin/collections/builders/for$new;->if:I

    invoke-static {v0, v2}, Lkotlin/collections/builders/for;->case(Lkotlin/collections/builders/for;I)V

    .line 4
    iput v1, p0, Lkotlin/collections/builders/for$new;->if:I

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final try(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/collections/builders/for$new;->do:I

    return-void
.end method
