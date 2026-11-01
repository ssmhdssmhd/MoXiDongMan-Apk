.class public Landroid/support/v4/c8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/kgcm/KGCMMultiplier;


# instance fields
.field private final do:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/support/v4/c8;->do:[J

    return-void
.end method


# virtual methods
.method public init([J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c8;->do:[J

    invoke-static {p1, v0}, Landroid/support/v4/pq0;->if([J[J)V

    return-void
.end method

.method public multiplyH([J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c8;->do:[J

    invoke-static {p1, v0, p1}, Landroid/support/v4/pq0;->new([J[J[J)V

    return-void
.end method
