.class public Lfreemarker/ext/beans/private;
.super Lfreemarker/ext/beans/new;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateNumberModel;


# static fields
.field public static final else:Lfreemarker/ext/util/ModelFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/beans/private$do;

    invoke-direct {v0}, Lfreemarker/ext/beans/private$do;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/private;->else:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/new;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/try;)V

    return-void
.end method


# virtual methods
.method public getAsNumber()Ljava/lang/Number;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method
