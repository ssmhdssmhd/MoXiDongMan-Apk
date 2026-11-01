.class public Landroid/support/v4/x7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private do:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/ne0;->goto([B)[J

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/x7;->do:[J

    return-void
.end method

.method public multiplyH([B)V
    .locals 2

    invoke-static {p1}, Landroid/support/v4/ne0;->goto([B)[J

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/x7;->do:[J

    invoke-static {v0, v1}, Landroid/support/v4/ne0;->final([J[J)V

    invoke-static {v0, p1}, Landroid/support/v4/ne0;->if([J[B)V

    return-void
.end method
