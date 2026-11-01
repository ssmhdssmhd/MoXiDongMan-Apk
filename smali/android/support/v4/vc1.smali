.class public final synthetic Landroid/support/v4/vc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic do:Landroid/support/v4/vc1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/vc1;

    invoke-direct {v0}, Landroid/support/v4/vc1;-><init>()V

    sput-object v0, Landroid/support/v4/vc1;->do:Landroid/support/v4/vc1;

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

    invoke-static {}, Lorg/chromium/base/PathUtils;->do()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
