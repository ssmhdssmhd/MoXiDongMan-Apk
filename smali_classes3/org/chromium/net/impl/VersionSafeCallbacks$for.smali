.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$for;
.super Landroid/support/v4/e31;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private final if:Landroid/support/v4/e31;


# direct methods
.method public constructor <init>(Landroid/support/v4/e31;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/e31;->do()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/e31;-><init>(Ljava/util/concurrent/Executor;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$for;->if:Landroid/support/v4/e31;

    return-void
.end method


# virtual methods
.method public do()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$for;->if:Landroid/support/v4/e31;

    invoke-virtual {v0}, Landroid/support/v4/e31;->do()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lorg/chromium/net/impl/VersionSafeCallbacks$for;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$for;->if:Landroid/support/v4/e31;

    check-cast p1, Lorg/chromium/net/impl/VersionSafeCallbacks$for;

    iget-object p1, p1, Lorg/chromium/net/impl/VersionSafeCallbacks$for;->if:Landroid/support/v4/e31;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$for;->if:Landroid/support/v4/e31;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public if(IJI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$for;->if:Landroid/support/v4/e31;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/e31;->if(IJI)V

    return-void
.end method
