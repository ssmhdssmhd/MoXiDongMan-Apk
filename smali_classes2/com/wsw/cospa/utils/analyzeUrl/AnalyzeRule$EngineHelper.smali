.class Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$EngineHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EngineHelper"
.end annotation


# static fields
.field private static final INSTANCE:Ljavax/script/ScriptEngine;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/script/javascript/RhinoScriptEngine;

    invoke-direct {v0}, Lcom/sun/script/javascript/RhinoScriptEngine;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$EngineHelper;->INSTANCE:Ljavax/script/ScriptEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljavax/script/ScriptEngine;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$EngineHelper;->INSTANCE:Ljavax/script/ScriptEngine;

    return-object v0
.end method
