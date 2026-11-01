.class public Lorg/greenrobot/greendao/generator/Query;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private distinct:Z

.field private name:Ljava/lang/String;

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/QueryParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Query;->name:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Query;->parameters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEqualsParam(Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/QueryParam;
    .locals 1

    const-string v0, "="

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/generator/Query;->addParam(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/QueryParam;

    move-result-object p1

    return-object p1
.end method

.method public addParam(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/QueryParam;
    .locals 1

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/generator/QueryParam;

    invoke-direct {v0, p1, p2}, Lorg/greenrobot/greendao/generator/QueryParam;-><init>(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Query;->parameters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public distinct()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/greenrobot/greendao/generator/Query;->distinct:Z

    return-void
.end method
