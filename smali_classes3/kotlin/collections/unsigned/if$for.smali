.class public final Lkotlin/collections/unsigned/if$for;
.super Lkotlin/collections/new;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/unsigned/if;->if([B)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/new<",
        "Landroid/support/v4/ea2;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u001b\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0096\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001a\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\n8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "kotlin/collections/unsigned/if$for",
        "Lkotlin/collections/new;",
        "Landroid/support/v4/ea2;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "",
        "isEmpty",
        "element",
        "do",
        "(B)Z",
        "",
        "index",
        "if",
        "(I)B",
        "for",
        "(B)I",
        "new",
        "getSize",
        "()I",
        "size",
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
.field public final synthetic do:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/collections/unsigned/if$for;->do:[B

    invoke-direct {p0}, Lkotlin/collections/new;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/ea2;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/ea2;

    invoke-virtual {p1}, Landroid/support/v4/ea2;->r()B

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/if$for;->do(B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public do(B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/unsigned/if$for;->do:[B

    invoke-static {v0, p1}, Lkotlin/interface;->case([BB)Z

    move-result p1

    return p1
.end method

.method public for(B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/unsigned/if$for;->do:[B

    invoke-static {v0, p1}, Lkotlin/collections/goto;->me([BB)I

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/if$for;->if(I)B

    move-result p1

    invoke-static {p1}, Landroid/support/v4/ea2;->if(B)Landroid/support/v4/ea2;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/unsigned/if$for;->do:[B

    invoke-static {v0}, Lkotlin/interface;->class([B)I

    move-result v0

    return v0
.end method

.method public if(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/unsigned/if$for;->do:[B

    invoke-static {v0, p1}, Lkotlin/interface;->break([BI)B

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/ea2;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/ea2;

    invoke-virtual {p1}, Landroid/support/v4/ea2;->r()B

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/if$for;->for(B)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/unsigned/if$for;->do:[B

    invoke-static {v0}, Lkotlin/interface;->super([B)Z

    move-result v0

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/ea2;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/ea2;

    invoke-virtual {p1}, Landroid/support/v4/ea2;->r()B

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/if$for;->new(B)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public new(B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/unsigned/if$for;->do:[B

    invoke-static {v0, p1}, Lkotlin/collections/goto;->rg([BB)I

    move-result p1

    return p1
.end method
