.class public final Lokio/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/wp0;
    name = "-DeprecatedUpgrade"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0019\u0010\u0001\u001a\u00020\u00008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0001\u0010\u0002\u001a\u0004\u0008\u0003\u0010\u0004\"\u0019\u0010\u0006\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lokio/-DeprecatedOkio;",
        "Okio",
        "Lokio/-DeprecatedOkio;",
        "getOkio",
        "()Lokio/-DeprecatedOkio;",
        "Lokio/-DeprecatedUtf8;",
        "Utf8",
        "Lokio/-DeprecatedUtf8;",
        "getUtf8",
        "()Lokio/-DeprecatedUtf8;",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final Okio:Lokio/b;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private static final Utf8:Lokio/d;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokio/b;->INSTANCE:Lokio/b;

    sput-object v0, Lokio/c;->Okio:Lokio/b;

    .line 2
    sget-object v0, Lokio/d;->INSTANCE:Lokio/d;

    sput-object v0, Lokio/c;->Utf8:Lokio/d;

    return-void
.end method

.method public static final getOkio()Lokio/b;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    sget-object v0, Lokio/c;->Okio:Lokio/b;

    return-object v0
.end method

.method public static final getUtf8()Lokio/d;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    sget-object v0, Lokio/c;->Utf8:Lokio/d;

    return-object v0
.end method
