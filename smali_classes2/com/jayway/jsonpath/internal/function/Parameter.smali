.class public Lcom/jayway/jsonpath/internal/function/Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private evaluated:Ljava/lang/Boolean;

.field private json:Ljava/lang/String;

.field private lateBinding:Lcom/jayway/jsonpath/internal/function/latebinding/ILateBindingValue;

.field private path:Lcom/jayway/jsonpath/internal/Path;

.field private type:Lcom/jayway/jsonpath/internal/function/ParamType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->evaluated:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/jayway/jsonpath/internal/Path;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->evaluated:Ljava/lang/Boolean;

    .line 9
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->path:Lcom/jayway/jsonpath/internal/Path;

    .line 10
    sget-object p1, Lcom/jayway/jsonpath/internal/function/ParamType;->PATH:Lcom/jayway/jsonpath/internal/function/ParamType;

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->type:Lcom/jayway/jsonpath/internal/function/ParamType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->evaluated:Ljava/lang/Boolean;

    .line 5
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->json:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/jayway/jsonpath/internal/function/ParamType;->JSON:Lcom/jayway/jsonpath/internal/function/ParamType;

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->type:Lcom/jayway/jsonpath/internal/function/ParamType;

    return-void
.end method


# virtual methods
.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Lcom/jayway/jsonpath/internal/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->path:Lcom/jayway/jsonpath/internal/Path;

    return-object v0
.end method

.method public getType()Lcom/jayway/jsonpath/internal/function/ParamType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->type:Lcom/jayway/jsonpath/internal/function/ParamType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->lateBinding:Lcom/jayway/jsonpath/internal/function/latebinding/ILateBindingValue;

    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/function/latebinding/ILateBindingValue;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasEvaluated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->evaluated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setEvaluated(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->evaluated:Ljava/lang/Boolean;

    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->json:Ljava/lang/String;

    return-void
.end method

.method public setLateBinding(Lcom/jayway/jsonpath/internal/function/latebinding/ILateBindingValue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->lateBinding:Lcom/jayway/jsonpath/internal/function/latebinding/ILateBindingValue;

    return-void
.end method

.method public setPath(Lcom/jayway/jsonpath/internal/Path;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->path:Lcom/jayway/jsonpath/internal/Path;

    return-void
.end method

.method public setType(Lcom/jayway/jsonpath/internal/function/ParamType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/Parameter;->type:Lcom/jayway/jsonpath/internal/function/ParamType;

    return-void
.end method
