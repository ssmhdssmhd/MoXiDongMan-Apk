.class Lorg/chromium/base/BuildInfo$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/BuildInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field private static do:Lorg/chromium/base/BuildInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/base/BuildInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/base/BuildInfo;-><init>(Lorg/chromium/base/BuildInfo$do;)V

    sput-object v0, Lorg/chromium/base/BuildInfo$if;->do:Lorg/chromium/base/BuildInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lorg/chromium/base/BuildInfo;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/BuildInfo$if;->do:Lorg/chromium/base/BuildInfo;

    return-object v0
.end method
