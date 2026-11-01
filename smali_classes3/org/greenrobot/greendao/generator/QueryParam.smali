.class public Lorg/greenrobot/greendao/generator/QueryParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private column:Lorg/greenrobot/greendao/generator/Property;

.field private operator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/QueryParam;->column:Lorg/greenrobot/greendao/generator/Property;

    .line 3
    iput-object p2, p0, Lorg/greenrobot/greendao/generator/QueryParam;->operator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumn()Lorg/greenrobot/greendao/generator/Property;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/QueryParam;->column:Lorg/greenrobot/greendao/generator/Property;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/QueryParam;->operator:Ljava/lang/String;

    return-object v0
.end method
