.class final Lkotlin/time/do$do;
.super Lkotlin/time/catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0003\u001a\u00020\u0002H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\n\u001a\u00020\u00088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0011\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "kotlin/time/do$do",
        "Lkotlin/time/catch;",
        "Lkotlin/time/new;",
        "do",
        "()J",
        "duration",
        "try",
        "(J)Lkotlin/time/catch;",
        "",
        "D",
        "startedAt",
        "Lkotlin/time/do;",
        "if",
        "Lkotlin/time/do;",
        "timeSource",
        "for",
        "J",
        "offset",
        "<init>",
        "(DLkotlin/time/do;JLandroid/support/v4/rx;)V",
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
.field private final do:D

.field private final for:J

.field private final if:Lkotlin/time/do;


# direct methods
.method private constructor <init>(DLkotlin/time/do;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/time/catch;-><init>()V

    iput-wide p1, p0, Lkotlin/time/do$do;->do:D

    iput-object p3, p0, Lkotlin/time/do$do;->if:Lkotlin/time/do;

    iput-wide p4, p0, Lkotlin/time/do$do;->for:J

    return-void
.end method

.method public synthetic constructor <init>(DLkotlin/time/do;JLandroid/support/v4/rx;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lkotlin/time/do$do;-><init>(DLkotlin/time/do;J)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/time/do$do;->if:Lkotlin/time/do;

    invoke-virtual {v0}, Lkotlin/time/do;->if()D

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/do$do;->do:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lkotlin/time/do$do;->if:Lkotlin/time/do;

    invoke-virtual {v2}, Lkotlin/time/do;->do()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkotlin/time/try;->z(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/do$do;->for:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/new;->w(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public try(J)Lkotlin/time/catch;
    .locals 7
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v6, Lkotlin/time/do$do;

    iget-wide v1, p0, Lkotlin/time/do$do;->do:D

    iget-object v3, p0, Lkotlin/time/do$do;->if:Lkotlin/time/do;

    iget-wide v4, p0, Lkotlin/time/do$do;->for:J

    invoke-static {v4, v5, p1, p2}, Lkotlin/time/new;->x(JJ)J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/time/do$do;-><init>(DLkotlin/time/do;J)V

    return-object v6
.end method
