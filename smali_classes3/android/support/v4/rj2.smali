.class public Landroid/support/v4/rj2;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/rj2$do;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private type:Landroid/support/v4/rj2$do;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Landroid/support/v4/rj2$do;->UNKNOWN:Landroid/support/v4/rj2$do;

    iput-object p1, p0, Landroid/support/v4/rj2;->type:Landroid/support/v4/rj2$do;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Landroid/support/v4/rj2$do;->UNKNOWN:Landroid/support/v4/rj2$do;

    iput-object p1, p0, Landroid/support/v4/rj2;->type:Landroid/support/v4/rj2$do;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/rj2$do;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object p1, Landroid/support/v4/rj2$do;->UNKNOWN:Landroid/support/v4/rj2$do;

    iput-object p1, p0, Landroid/support/v4/rj2;->type:Landroid/support/v4/rj2$do;

    .line 9
    iput-object p2, p0, Landroid/support/v4/rj2;->type:Landroid/support/v4/rj2$do;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Landroid/support/v4/rj2$do;->UNKNOWN:Landroid/support/v4/rj2$do;

    iput-object p1, p0, Landroid/support/v4/rj2;->type:Landroid/support/v4/rj2$do;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Landroid/support/v4/rj2$do;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Landroid/support/v4/rj2$do;->UNKNOWN:Landroid/support/v4/rj2$do;

    iput-object p1, p0, Landroid/support/v4/rj2;->type:Landroid/support/v4/rj2$do;

    .line 12
    iput-object p3, p0, Landroid/support/v4/rj2;->type:Landroid/support/v4/rj2$do;

    return-void
.end method


# virtual methods
.method public getType()Landroid/support/v4/rj2$do;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/rj2;->type:Landroid/support/v4/rj2$do;

    return-object v0
.end method
