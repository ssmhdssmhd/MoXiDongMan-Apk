.class public abstract Landroid/support/v4/fc2;
.super Landroid/support/v4/h61;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/supplier/DestroyableObservableSupplier;
.implements Lorg/chromium/base/UnownedUserData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/h61<",
        "TE;>;",
        "Lorg/chromium/base/supplier/DestroyableObservableSupplier<",
        "TE;>;",
        "Lorg/chromium/base/UnownedUserData;"
    }
.end annotation


# static fields
.field public static final synthetic this:Z


# instance fields
.field private final else:Landroid/support/v4/ec2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ec2<",
            "Landroid/support/v4/fc2<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private goto:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ec2;)V
    .locals 0
    .param p1    # Landroid/support/v4/ec2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ec2<",
            "+",
            "Landroid/support/v4/fc2<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/h61;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/fc2;->else:Landroid/support/v4/ec2;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/support/v4/fc2;->goto:Z

    return-void
.end method


# virtual methods
.method public case(Lorg/chromium/base/static;)V
    .locals 1
    .param p1    # Lorg/chromium/base/static;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroid/support/v4/fc2;->else:Landroid/support/v4/ec2;

    invoke-virtual {v0, p1, p0}, Landroid/support/v4/ec2;->if(Lorg/chromium/base/static;Lorg/chromium/base/UnownedUserData;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/fc2;->else:Landroid/support/v4/ec2;

    invoke-virtual {v0, p0}, Landroid/support/v4/ec2;->for(Lorg/chromium/base/UnownedUserData;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/fc2;->goto:Z

    return-void
.end method

.method public synthetic informOnDetachmentFromHost()Z
    .locals 1

    invoke-static {p0}, Landroid/support/v4/cc2;->do(Lorg/chromium/base/UnownedUserData;)Z

    move-result v0

    return v0
.end method

.method public synthetic onDetachedFromHost(Lorg/chromium/base/static;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/cc2;->if(Lorg/chromium/base/UnownedUserData;Lorg/chromium/base/static;)V

    return-void
.end method
