.class public final synthetic Landroid/support/v4/dc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lorg/chromium/base/static;

.field public final synthetic if:Lorg/chromium/base/UnownedUserData;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/static;Lorg/chromium/base/UnownedUserData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/dc2;->do:Lorg/chromium/base/static;

    iput-object p2, p0, Landroid/support/v4/dc2;->if:Lorg/chromium/base/UnownedUserData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/dc2;->do:Lorg/chromium/base/static;

    iget-object v1, p0, Landroid/support/v4/dc2;->if:Lorg/chromium/base/UnownedUserData;

    invoke-static {v0, v1}, Lorg/chromium/base/static;->do(Lorg/chromium/base/static;Lorg/chromium/base/UnownedUserData;)V

    return-void
.end method
