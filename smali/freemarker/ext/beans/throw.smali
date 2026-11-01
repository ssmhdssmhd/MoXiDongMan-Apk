.class public Lfreemarker/ext/beans/throw;
.super Lfreemarker/ext/beans/new;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateDateModel;


# static fields
.field public static final goto:Lfreemarker/ext/util/ModelFactory;


# instance fields
.field private final else:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/beans/throw$do;

    invoke-direct {v0}, Lfreemarker/ext/beans/throw$do;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/throw;->goto:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lfreemarker/ext/beans/try;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/new;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/try;)V

    .line 2
    instance-of v0, p1, Ljava/sql/Date;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lfreemarker/ext/beans/throw;->else:I

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/sql/Time;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lfreemarker/ext/beans/throw;->else:I

    goto :goto_0

    .line 6
    :cond_1
    instance-of p1, p1, Ljava/sql/Timestamp;

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lfreemarker/ext/beans/throw;->else:I

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p2}, Lfreemarker/ext/beans/try;->final()I

    move-result p1

    iput p1, p0, Lfreemarker/ext/beans/throw;->else:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getAsDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateType()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/throw;->else:I

    return v0
.end method
