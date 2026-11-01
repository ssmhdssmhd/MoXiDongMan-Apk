.class public Landroid/support/v4/lk0$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/lk0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field private if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/lk0$do;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/support/v4/lk0$do;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/lk0$do;->if:Ljava/lang/String;

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/lk0$do;->do:Ljava/lang/String;

    return-object v0
.end method
