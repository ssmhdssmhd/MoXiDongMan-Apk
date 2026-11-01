.class public abstract Lkotlin/time/catch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/iz1;
    version = "1.3"
.end annotation

.annotation build Landroid/support/v4/l90;
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0003\u001a\u00020\u0002H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\t\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/time/catch;",
        "",
        "Lkotlin/time/new;",
        "do",
        "()J",
        "duration",
        "try",
        "(J)Lkotlin/time/catch;",
        "new",
        "",
        "for",
        "if",
        "<init>",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()J
.end method

.method public final for()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/time/catch;->do()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/new;->u(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final if()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/time/catch;->do()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/new;->u(J)Z

    move-result v0

    return v0
.end method

.method public new(J)Lkotlin/time/catch;
    .locals 0
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lkotlin/time/new;->N(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/time/catch;->try(J)Lkotlin/time/catch;

    move-result-object p1

    return-object p1
.end method

.method public try(J)Lkotlin/time/catch;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/time/for;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlin/time/for;-><init>(Lkotlin/time/catch;JLandroid/support/v4/rx;)V

    return-object v0
.end method
