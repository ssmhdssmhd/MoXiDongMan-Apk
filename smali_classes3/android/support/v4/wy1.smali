.class public Landroid/support/v4/wy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateDateModel;


# instance fields
.field private final do:Ljava/util/Date;

.field private final if:I


# direct methods
.method public constructor <init>(Ljava/sql/Date;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/wy1;-><init>(Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/Time;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/support/v4/wy1;-><init>(Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/Timestamp;)V
    .locals 1

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/wy1;-><init>(Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Landroid/support/v4/wy1;->do:Ljava/util/Date;

    .line 6
    iput p2, p0, Landroid/support/v4/wy1;->if:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "date == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAsDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/wy1;->do:Ljava/util/Date;

    return-object v0
.end method

.method public getDateType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/wy1;->if:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/wy1;->do:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
