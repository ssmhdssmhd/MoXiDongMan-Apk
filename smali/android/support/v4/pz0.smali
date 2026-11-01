.class public final synthetic Landroid/support/v4/pz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/memory/MemoryPressureCallback;


# static fields
.field public static final synthetic do:Landroid/support/v4/pz0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/pz0;

    invoke-direct {v0}, Landroid/support/v4/pz0;-><init>()V

    sput-object v0, Landroid/support/v4/pz0;->do:Landroid/support/v4/pz0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPressure(I)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/base/MemoryPressureListener;->do(I)V

    return-void
.end method
