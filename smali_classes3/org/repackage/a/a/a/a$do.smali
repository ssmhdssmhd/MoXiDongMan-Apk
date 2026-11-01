.class public abstract Lorg/repackage/a/a/a/a$do;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/repackage/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/repackage/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/repackage/a/a/a/a$do$do;
    }
.end annotation


# direct methods
.method public static do(Landroid/os/IBinder;)Lorg/repackage/a/a/a/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.openid.IOpenID"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lorg/repackage/a/a/a/a;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lorg/repackage/a/a/a/a;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/repackage/a/a/a/a$do$do;

    invoke-direct {v0, p0}, Lorg/repackage/a/a/a/a$do$do;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
