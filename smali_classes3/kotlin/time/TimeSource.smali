.class public interface abstract Lkotlin/time/TimeSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/iz1;
    version = "1.3"
.end annotation

.annotation build Landroid/support/v4/l90;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/TimeSource$if;,
        Lkotlin/time/TimeSource$do;
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008g\u0018\u0000 \u00042\u00020\u0001:\u0002\u0005\u0006J\u0008\u0010\u0003\u001a\u00020\u0002H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/time/TimeSource;",
        "",
        "Lkotlin/time/catch;",
        "markNow",
        "Companion",
        "do",
        "if",
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
.field public static final Companion:Lkotlin/time/TimeSource$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/time/TimeSource$do;->do:Lkotlin/time/TimeSource$do;

    sput-object v0, Lkotlin/time/TimeSource;->Companion:Lkotlin/time/TimeSource$do;

    return-void
.end method


# virtual methods
.method public abstract markNow()Lkotlin/time/catch;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end method
