.class final Lkotlin/time/for;
.super Lkotlin/time/catch;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/l90;
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0003\u0018\u00002\u00020\u0001B\u001a\u0012\u0006\u0010\u000b\u001a\u00020\u0001\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0003\u001a\u00020\u0002H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\u00018\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001f\u0010\u000f\u001a\u00020\u00028\u0006@\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u0004\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/time/for;",
        "Lkotlin/time/catch;",
        "Lkotlin/time/new;",
        "do",
        "()J",
        "duration",
        "try",
        "(J)Lkotlin/time/catch;",
        "Lkotlin/time/catch;",
        "else",
        "()Lkotlin/time/catch;",
        "mark",
        "if",
        "J",
        "case",
        "adjustment",
        "<init>",
        "(Lkotlin/time/catch;JLandroid/support/v4/rx;)V",
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
.field private final do:Lkotlin/time/catch;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private final if:J


# direct methods
.method private constructor <init>(Lkotlin/time/catch;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/time/catch;-><init>()V

    iput-object p1, p0, Lkotlin/time/for;->do:Lkotlin/time/catch;

    iput-wide p2, p0, Lkotlin/time/for;->if:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/time/catch;JLandroid/support/v4/rx;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lkotlin/time/for;-><init>(Lkotlin/time/catch;J)V

    return-void
.end method


# virtual methods
.method public final case()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/for;->if:J

    return-wide v0
.end method

.method public do()J
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/time/for;->do:Lkotlin/time/catch;

    invoke-virtual {v0}, Lkotlin/time/catch;->do()J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/for;->if:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/new;->w(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final else()Lkotlin/time/catch;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/time/for;->do:Lkotlin/time/catch;

    return-object v0
.end method

.method public try(J)Lkotlin/time/catch;
    .locals 4
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/time/for;

    iget-object v1, p0, Lkotlin/time/for;->do:Lkotlin/time/catch;

    iget-wide v2, p0, Lkotlin/time/for;->if:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/new;->x(JJ)J

    move-result-wide p1

    invoke-direct {v0, v1, p1, p2}, Lkotlin/time/for;-><init>(Lkotlin/time/catch;J)V

    return-object v0
.end method
