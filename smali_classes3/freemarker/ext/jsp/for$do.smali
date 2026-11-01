.class Lfreemarker/ext/jsp/for$do;
.super Ljavax/el/ELContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Lfreemarker/ext/jsp/else;

.field public final synthetic if:Lfreemarker/ext/jsp/for;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/for;Lfreemarker/ext/jsp/else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/for$do;->if:Lfreemarker/ext/jsp/for;

    invoke-direct {p0}, Ljavax/el/ELContext;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/ext/jsp/for$do;->do:Lfreemarker/ext/jsp/else;

    return-void
.end method

.method public static synthetic do(Lfreemarker/ext/jsp/for$do;)Lfreemarker/ext/jsp/else;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/jsp/for$do;->do:Lfreemarker/ext/jsp/else;

    return-object p0
.end method


# virtual methods
.method public for()Ljavax/el/FunctionMapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public if()Ljavax/el/ELResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/for$do;->if:Lfreemarker/ext/jsp/for;

    invoke-static {v0}, Lfreemarker/ext/jsp/for;->do(Lfreemarker/ext/jsp/for;)Ljavax/el/CompositeELResolver;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljavax/el/VariableMapper;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/for$do$do;

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/for$do$do;-><init>(Lfreemarker/ext/jsp/for$do;)V

    return-object v0
.end method
