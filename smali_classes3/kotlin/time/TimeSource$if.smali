.class public final Lkotlin/time/TimeSource$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/TimeSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/TimeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "kotlin/time/TimeSource$if",
        "Lkotlin/time/TimeSource;",
        "",
        "toString",
        "Lkotlin/time/catch;",
        "markNow",
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


# static fields
.field public static final if:Lkotlin/time/TimeSource$if;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# instance fields
.field private final synthetic do:Landroid/support/v4/n01;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/time/TimeSource$if;

    invoke-direct {v0}, Lkotlin/time/TimeSource$if;-><init>()V

    sput-object v0, Lkotlin/time/TimeSource$if;->if:Lkotlin/time/TimeSource$if;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/n01;->if:Landroid/support/v4/n01;

    iput-object v0, p0, Lkotlin/time/TimeSource$if;->do:Landroid/support/v4/n01;

    return-void
.end method


# virtual methods
.method public markNow()Lkotlin/time/catch;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    iget-object v0, p0, Lkotlin/time/TimeSource$if;->do:Landroid/support/v4/n01;

    invoke-virtual {v0}, Lkotlin/time/if;->markNow()Lkotlin/time/catch;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/n01;->if:Landroid/support/v4/n01;

    invoke-virtual {v0}, Landroid/support/v4/n01;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
