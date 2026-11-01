.class public Landroid/support/v4/m0;
.super Landroid/support/v4/abstract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/m0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/abstract<",
        "Landroid/support/v4/m0$do;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[CLandroid/support/v4/gj0;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/abstract;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[CLandroid/support/v4/gj0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic if(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/m0$do;

    invoke-virtual {p0, p1}, Landroid/support/v4/m0;->import(Landroid/support/v4/m0$do;)J

    move-result-wide v0

    return-wide v0
.end method

.method public import(Landroid/support/v4/m0$do;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/m0$do;->if(Landroid/support/v4/m0$do;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v4/m0$do;->do(Landroid/support/v4/m0$do;)Landroid/support/v4/sk2;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/abstract;->break(Ljava/util/List;Landroid/support/v4/sk2;)J

    move-result-wide v0

    return-wide v0
.end method

.method public native(Landroid/support/v4/m0$do;Landroid/support/v4/uf1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/m0$do;->do(Landroid/support/v4/m0$do;)Landroid/support/v4/sk2;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/abstract;->while(Landroid/support/v4/sk2;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/m0$do;->if(Landroid/support/v4/m0$do;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v4/m0$do;->do(Landroid/support/v4/m0$do;)Landroid/support/v4/sk2;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Landroid/support/v4/abstract;->this(Ljava/util/List;Landroid/support/v4/uf1;Landroid/support/v4/sk2;)V

    return-void
.end method

.method public bridge synthetic new(Ljava/lang/Object;Landroid/support/v4/uf1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/m0$do;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/m0;->native(Landroid/support/v4/m0$do;Landroid/support/v4/uf1;)V

    return-void
.end method

.method public try()Landroid/support/v4/uf1$for;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/abstract;->try()Landroid/support/v4/uf1$for;

    move-result-object v0

    return-object v0
.end method
