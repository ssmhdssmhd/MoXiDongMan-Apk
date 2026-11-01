.class Lfreemarker/ext/jsp/for$do$do;
.super Ljavax/el/VariableMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jsp/for$do;->new()Ljavax/el/VariableMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/ext/jsp/for$do;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/for$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/for$do$do;->do:Lfreemarker/ext/jsp/for$do;

    invoke-direct {p0}, Ljavax/el/VariableMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)Ljavax/el/ValueExpression;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/for$do$do;->do:Lfreemarker/ext/jsp/for$do;

    invoke-static {v0}, Lfreemarker/ext/jsp/for$do;->do(Lfreemarker/ext/jsp/for$do;)Lfreemarker/ext/jsp/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/else;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lfreemarker/ext/jsp/for;->if()Ljavax/el/ExpressionFactory;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p1, v1}, Ljavax/el/ExpressionFactory;->createValueExpression(Ljava/lang/Object;Ljava/lang/Class;)Ljavax/el/ValueExpression;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/String;Ljavax/el/ValueExpression;)Ljavax/el/ValueExpression;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/for$do$do;->do(Ljava/lang/String;)Ljavax/el/ValueExpression;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/ext/jsp/for$do$do;->do:Lfreemarker/ext/jsp/for$do;

    invoke-static {v1}, Lfreemarker/ext/jsp/for$do;->do(Lfreemarker/ext/jsp/for$do;)Lfreemarker/ext/jsp/else;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/ext/jsp/for$do$do;->do:Lfreemarker/ext/jsp/for$do;

    invoke-virtual {p2, v2}, Ljavax/el/ValueExpression;->getValue(Ljavax/el/ELContext;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
