.class public final synthetic Lorg/chromium/base/task/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic do:Lorg/chromium/base/task/try;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/base/task/try;

    invoke-direct {v0}, Lorg/chromium/base/task/try;-><init>()V

    sput-object v0, Lorg/chromium/base/task/try;->do:Lorg/chromium/base/task/try;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/chromium/base/task/case;->do()Lorg/chromium/base/task/if;

    move-result-object v0

    return-object v0
.end method
