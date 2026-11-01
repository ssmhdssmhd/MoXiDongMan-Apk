.class public Landroid/support/v4/m0$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private if:Landroid/support/v4/sk2;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v4/sk2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Landroid/support/v4/sk2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/m0$do;->do:Ljava/util/List;

    .line 3
    iput-object p2, p0, Landroid/support/v4/m0$do;->if:Landroid/support/v4/sk2;

    return-void
.end method

.method public static synthetic do(Landroid/support/v4/m0$do;)Landroid/support/v4/sk2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m0$do;->if:Landroid/support/v4/sk2;

    return-object p0
.end method

.method public static synthetic if(Landroid/support/v4/m0$do;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m0$do;->do:Ljava/util/List;

    return-object p0
.end method
